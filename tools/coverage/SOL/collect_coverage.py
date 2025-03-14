import argparse
import glob
import os
import subprocess
import time

from rich.progress import (
    BarColumn,
    MofNCompleteColumn,
    Progress,
    TextColumn,
    TimeElapsedColumn,
)
from rich.traceback import install

install()
CURRENT_TIME = time.time()

SOLC = "/usr/bin/solc"  # Path to the Solidity compiler
ECHIDNA = "/home/linuxbrew/.linuxbrew/bin/echidna"  # Path to Echidna
OUTPUT_DIR = f"/tmp/solidity_coverage{CURRENT_TIME}"


def setup():
    """Create the output directory for fuzzing results."""
    os.makedirs(OUTPUT_DIR, exist_ok=True)


def compile_contract(contract_path):
    """Compile the Solidity contract."""
    try:
        result = subprocess.run(
            [SOLC, "--bin", contract_path, "-o", OUTPUT_DIR, "--overwrite"],
            capture_output=True,
            encoding="utf-8",
            timeout=10,
        )
        if result.returncode == 0:
            print(f"Compiled: {contract_path}")
            return True
        else:
            print(f"Compilation failed: {contract_path}\n{result.stderr}")
            return False
    except subprocess.TimeoutExpired:
        print(f"Compilation timed out for: {contract_path}")
        return False


def run_echidna(contract_path):
    """Run Echidna fuzzing on the compiled contract."""
    try:
        result = subprocess.run(
            [
                ECHIDNA,
                contract_path,
                "--config",
                "/home/Fuzz4All/tools/coverage/SOL/echidna_config.yaml",
            ],
            capture_output=True,
            encoding="utf-8",
            timeout=60,
        )
        if result.returncode == 0:
            print(f"Echidna passed: {contract_path}")
            return True
        else:
            print(f"Echidna failed: {contract_path}")
            return False
    except subprocess.TimeoutExpired:
        print(f"Echidna timed out for: {contract_path}")
        return False


def fuzz_loop(args):
    setup()
    valid_count = 0
    total = 0

    with Progress(
        TextColumn("Fuzzing [progress.percentage]{task.percentage:>3.0f}%"),
        BarColumn(),
        MofNCompleteColumn(),
        TextColumn("•"),
        TimeElapsedColumn(),
    ) as progress:
        files = glob.glob(os.path.join(args.folder, "*.sol"))
        files.sort()

        task = progress.add_task("Fuzzing Contracts", total=len(files))

        for index, contract_path in enumerate(files):
            if compile_contract(contract_path):
                if run_echidna(contract_path):
                    valid_count += 1

            total += 1

            if (index + 1) % args.interval == 0:
                with open(os.path.join(args.folder, "coverage.csv"), "a") as f:
                    f.write(f"{index + 1},{valid_count},{total}\n")

            progress.update(task, advance=1)

    with open(os.path.join(args.folder, "valid.txt"), "w") as f:
        f.write(f"Total valid: {valid_count}/{total}")


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--folder", type=str, required=True, help="Folder with Solidity contracts"
    )
    parser.add_argument(
        "--interval", type=int, default=10, help="Interval for logging progress"
    )
    args = parser.parse_args()

    fuzz_loop(args)


if __name__ == "__main__":
    main()
