pragma solidity ^0.8.0;
contract Mutated {
    uint[4] x;
    function setArray() public {
        x[1] = 1;
        x[2] = 2;
    }
    function getArray() public view returns (uint) {
        return x[2];
    }
}
```
