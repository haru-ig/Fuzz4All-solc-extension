pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations34_Modifications
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
        z -= 99;
        x += 1;
        x += 1;
        x += 1;
        x += 0x0;
        x += 0;
        y[0] += 88;
        y[0] += 98;
        x += 1;
        z -= 89;
    }
}
