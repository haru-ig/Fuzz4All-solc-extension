pragma solidity ^0.8.0;
uint32 constant initIB = 46;
contract Q {
    uint32 constant IB2 = IBV + IBV2 + initIB;
    uint32 constant IBV = 3;
    uint32 constant IBV2 = 2;
    constructor() public {
        IB = IV + IBV + IB2 + IB2;
    }
}
```
