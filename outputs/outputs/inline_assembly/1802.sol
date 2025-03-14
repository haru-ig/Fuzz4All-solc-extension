pragma solidity ^0.8.0;
contract Example {
    uint varX;
    uint64 public immutable varX1;
    uint32 public immutable varX2;
    uint x3;
    constructor() public {
        varX = 123;
        x1 = 456;
        x2 = 789;
        x3 = 99;
    }
}
