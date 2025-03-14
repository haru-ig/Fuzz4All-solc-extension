pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations34_Mutations
{
    uint x;
    uint[9] y;
    int z;
    constructor() public {
        y[1] = 0x0;
        y[2] = 0x0;
        y[4] = 0x0;
        y[5] = 0x0;
        y[6] = 0x0;
        y[8] = x;
        x = 89;
        x -= 99;
        x -= 99;
        x -= x;
        x -= 1;
        x -= 88;
        x -= 98;
        z += 99;
    }
}
