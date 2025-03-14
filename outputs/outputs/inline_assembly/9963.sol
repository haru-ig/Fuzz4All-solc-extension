pragma solidity ^0.8.0;
contract C {
    uint8 public value;
    constructor() public {
        value = value - 1;
    }
    function test(uint8 x) public {
        uint32 y = uint32(x >> 1);
        value = x >> y;
    }
}

```
