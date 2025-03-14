pragma solidity ^0.8.0;
contract Semantic {
    uint16 public x;
    function f() public {
        if (uint16(42) > x) {
            x;
        }
        x = x + uint16(42);
    }
}
```
