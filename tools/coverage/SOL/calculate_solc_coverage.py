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

# Paths to solc and coverage directories
SOLC = "/usr/local/bin/solc"
COV_FOLDER = "/home/coverage/solc-source/build"
LCOV = "lcov"


def run_compile(source: str):
    """Compile a Solidity file using solc."""
    try:
        exit_code = subprocess.run(
            f"{SOLC} --bin --optimize {source}",
            shell=True,
            capture_output=True,
            encoding="utf-8",
            timeout=5,
            text=True,
        )
    except subprocess.TimeoutExpired:
        return -1
    except UnicodeDecodeError:
        return -1

    return exit_code.returncode


def get_coverage():
    """Collect coverage statistics using lcov."""
    subprocess.run(
        f"cd {COV_FOLDER} && {LCOV} --capture --directory . --output-file coverage.info",
        shell=True,
        encoding="utf-8",
        text=True,
        capture_output=True,
    )
    exit_code = subprocess.run(
        f"cd {COV_FOLDER} && {LCOV} --summary coverage.info",
        shell=True,
        encoding="utf-8",
        text=True,
        capture_output=True,
    )
    line_cov, func_cov = 0, 0
    for line in exit_code.stdout.splitlines():
        if line.strip().startswith("lines......:"):
            line_cov = int(line.strip().split("(")[1].split(" ")[0])
        elif line.strip().startswith("functions..:"):
            func_cov = int(line.strip().split("(")[1].split(" ")[0])
    print(line_cov, func_cov)
    return line_cov, func_cov


def clean_coverage():
    """Reset coverage counters."""
    subprocess.run(
        f"cd {COV_FOLDER} && {LCOV} --zerocounters --directory .",
        shell=True,
        encoding="utf-8",
    )


def coverage_loop(folder, interval, start, end):
    """Iterate through all fuzzing inputs and track coverage."""
    with Progress(
        TextColumn("Fuzzing • [progress.percentage]{task.percentage:>3.0f}%"),
        BarColumn(),
        MofNCompleteColumn(),
        TextColumn("•"),
        TimeElapsedColumn(),
    ) as p:
        clean_coverage()
        files = glob.glob(f"{folder}/*.sol")
        files.sort(key=os.path.getmtime)
        index = 0
        num_valid = 0
        for file in p.track(files):
            if index + 1 < start:
                index += 1
                continue
            ret_code = run_compile(file)
            if ret_code == 0:
                num_valid += 1
            if (index + 1) % interval == 0 and index + 1 >= start:
                line_cov, func_cov = get_coverage()
                with open(f"{folder}/coverage.csv", "a") as f:
                    f.write(f"{index + 1},{line_cov},{func_cov}\n")
            if index + 1 >= end:
                break
            index += 1
        print(f"Total valid: {num_valid}")


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--folder", type=str, required=True)
    parser.add_argument("--interval", type=int, required=True)
    parser.add_argument("--start", type=int, default=0)
    parser.add_argument("--end", type=int, default=1000000000)
    args = parser.parse_args()

    coverage_loop(args.folder, args.interval, args.start, args.end)


if __name__ == "__main__":
    main()
