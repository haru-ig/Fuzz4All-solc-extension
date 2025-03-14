pragma solidity ^0.8.0;

contract B {
    uint AContractInstance;
    function __constructor() public {
        AContractInstance = new A();
    }
    function set(uint256) public {
        AContractInstance.set(4);
    }
    function getlength() public view returns (uint8) {
        return AContractInstance.getlength();
    }
}

contracts/A.sol:2:1: error: Not allowed in inline assembly.
    int256 namelength;
                ^

contracts/A.sol:3:1: error: Not allowed in inline assembly.
    uint names;
```
