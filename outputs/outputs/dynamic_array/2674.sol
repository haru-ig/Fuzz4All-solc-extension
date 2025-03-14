pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations33
{
    uint x;
    uint[6] y;
    int z;
    constructor() public {
        x = 47;
        y[0] = x;
        x += 2;
    }
}
