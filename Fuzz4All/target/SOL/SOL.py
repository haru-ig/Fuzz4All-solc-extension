# These imports may not be sufficient. Add more as you need to.


import re
import subprocess
import time
from typing import List, Union

import torch

from Fuzz4All.target.target import FResult, Target
from Fuzz4All.util.Logger import LEVEL
from Fuzz4All.util.util import comment_remover


class SOLTarget(Target):
    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        self.SYSTEM_MESSAGE = "You are a Solidity Fuzzer"
        if kwargs["template"] == "fuzzing_with_config_file":
            config_dict = kwargs["config_dict"]
            self.prompt_used = self._create_prompt_from_config(config_dict)
            self.config_dict = config_dict
        else:
            raise NotImplementedError

    def write_back_file(self, code):
        try:
            with open(
                "/tmp/temp{}.sol".format(self.CURRENT_TIME), "w", encoding="utf-8"
            ) as f:
                f.write(code)
        except:
            pass
        return "/tmp/temp{}.sol".format(self.CURRENT_TIME)

    def wrap_prompt(self, prompt: str) -> str:
        return f"*/ {prompt} */\n{self.prompt_used['separator']}\n{self.prompt_used['begin']}"

    def wrap_in_comment(self, prompt: str) -> str:
        return f"/* {prompt} */"

    def filter(self, code) -> bool:
        clean_code = code.replace(self.prompt_used["begin"], "").strip()
        # if self.prompt_used["target_api"] not in clean_code:
        #    return False

        target_api = self.prompt_used.get("target_api")
        if target_api and target_api not in clean_code:
            return False

        return True

    def clean(self, code: str) -> str:
        code = comment_remover(code)
        return code

    def clean_code(self, code: str) -> str:
        code = comment_remover(code)
        code = "\n".join(
            [
                line
                for line in code.split("\n")
                if line.strip() != "" and line.strip() != self.prompt_used["begin"]
            ]
        )
        return code

    def validate_individual(self, filename) -> (FResult, str):
        try:
            with open(filename, "r", encoding="utf-8") as f:
                code = f.read()
        except:
            pass
        self.write_back_file(code)
        try:
            exit_code = subprocess.run(
                # command line to compile .sol file
                # I changed {self.target_name} to solc because target_name is sol but the command is solc ....
                f"{self.target_name} --bin --abi /tmp/temp{self.CURRENT_TIME}.sol -o /tmp/out{self.CURRENT_TIME} --overwrite",
                shell=True,
                capture_output=True,
                encoding="utf-8",
                timeout=5,
                text=True,
            )
        except subproces.TimeoutExpired as te:
            pname = f"'temp{self.CURRENT_TIME}'"
            subprocess.run(
                ["ps -ef | grep " + pname + " | grep -v grep | awk '{print $2}'"],
                shell=True,
            )
            subprocess.run(
                [
                    "ps -ef | grep "
                    + pname
                    + " | grep -v grep | awk '{print $2}' | xargs -r kill -9"
                ],
                shell=True,
            )  # kill all tests thank you
            return FResult.TIMED_OUT, "sol"
        if exit_code.returncode == 1:
            return FResult.FAILURE, exit_code.stderr
        elif exit_code.returncode == 0:
            return FResult.SAFE, exit_code.stdout
        else:
            return FResult.ERROR, exit_code.stderr
