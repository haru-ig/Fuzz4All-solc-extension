pragma solidity ^0.8.0;
contract SemanticTest_v5
{
    uint240 public x;
    constructor() public {
        x = 400;
        x = x * 2;
    }
}
