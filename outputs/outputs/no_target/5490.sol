pragma solidity ^0.8.0;
contract O2 {
    function y() public returns (uint) {
        unchecked {

        }
    }
```


Compile your contract with the updated version of the compiler using the following command:
```shell
solc contracts/[your_contract].sol -Xsolidity0.8
```
