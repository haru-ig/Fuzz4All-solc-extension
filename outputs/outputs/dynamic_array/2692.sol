pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations35
{
    uint x;
    uint[9] y;
    int z;
    constructor() public {
        x = 26;
        y[0] = 22;
        z -= 99;
        x += 1;
        x += 1;
        x += 1;
        x += 1;
        x += 1;
        x += 1;
        x += 1;
    }
}
