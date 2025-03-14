This project is based on the original [Fuzz4ALL](https://github.com/fuzz4all/fuzz4all) project, which is licensed under the Creative Commons Attribution 4.0 International License (CC BY 4.0).

I has made the following modifications:
- I extended the original Fuzz4ALL so that it can target the Solidity compiler, solc.
- In order to achive the goal, I added some new features to the original program.
- The changes I made are the following programe: make_target.py target/SOL/SOL.py scripts/build_solc_coverage.sh tools/coverage/calculate_coverage.py  calculate_solc_coverage.py  collect_coverage.py  echidna_config.yaml
- Basically, you can run the fuzzing campaign in the same way as Fuzz4All. To get coverage data, you need to run build_solc_coverage.sh first, and calculate_solc_coverage.py. calculate_coverage.py and collect_coverage.py utilise [echidna](https://github.com/crytic/echidna) to get code coverages.


These modifications are also licensed under the Creative Commons Attribution 4.0 International License (CC BY 4.0).

