pragma solidity ^0.8.0;
contract A {
    uint public b;

    function mutated() public pure {
      b = b * 16;
    }

    function mutatedBy(uint) public pure returns (uint) {

        uint a = uint(uint(_uint64) * 10) * 16;
        return (uint(a - (uint(_uint64) * 10) ** 32) * 16) * 32;
    }
}
```
---
