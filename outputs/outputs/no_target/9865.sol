pragma solidity ^0.8.0;
interface i {
    function k() pure external returns (uint256 i);
}

pragma solidity ^0.8.7;
interface i {
    function k() external returns (uint256 i) { throw; }
}

pragma solidity ^0.8.7;
interface i {
    function k() public pure returns (uint256 i);
}
pragma experimental ABIEncoderV2;
interface i {
    function k() public pure returns (uint256 i);
}
```
```bash
./check-contract_32.sol
/usr/local/lib/node_modules/solidity/bin/solc: /usr/local.solc20:1:
EVM version is lower than supported. You can specify the EVM version manually with the compiler flag -v 0.8.0
```

There will be a lot of output.
We can fix a few things before running the tests.

1. Remove the pragma solidity and replace it with the pragma experimental ABIEncoderV2 because solidity 0.8.6 doesnot support encoding v2 format.
Now we have to fix a few compiler errors. I had to add a pragma experimental for the compiler version error as the compiler version for solidity v0.8.6 is still lower than expected.
![fix-compiler-version.png](/assets/images/solidity/fix-compiler-version.png)
2. Now we are ready to run the tests by going into the package folder, and run the following shell command.
`./run-tests.sh`
![run-tests.sh.png](/assets/images/solidity/run-tests.sh.png)
Check the logs in order to understand what the tests do.
```bash
cd logs
ls
```
> /logs/check-contract2.sol_83.log
> /logs/check-contract15.sol_30.log
> /logs/check-contract16.sol_62.log
> /logs/check-contract11.sol_13.log
> /logs/check-contract12.sol_14.log
> /logs/check-contract4.sol_4.log
> /logs/check_31.sol_57.log
> /logs/check-contract10.sol_49.log
> /logs/check-contract9.sol_10.log
> /logs/check-contract5.sol_5.log
> /logs/check-contract6.sol_6.log
> /logs/check-contract7.sol_7.log
> /logs/check-contract8.sol_8.log
> /logs/check-contract13.sol_29.log
> /logs/check-contract14.sol
