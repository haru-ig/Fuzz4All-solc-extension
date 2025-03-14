pragma solidity ^0.8.0;
contract Q {
    constructor() external {}
    uint32 public iv;

    uint32 public iv2;
    constructor() public {
        iv2 += iv * 30 * 2;
        iv += iv * 3 * 2;
        iv += initIV * 3;
    }
}
```
