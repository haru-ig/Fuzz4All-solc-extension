pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations33b
{
    uint x;
    uint[6] y = new uint[](10);
    constructor() public {
        x = 47;
        y[0] = x;
        x += 8;
    }
}
