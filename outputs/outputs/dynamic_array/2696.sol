pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations35_Mutations
{
    uint x;
    uint[9] y;
    int[13] z;
    constructor() public {
        y[1] = 0x0;
        y[2] = 0x0;
        y[4] = 0x0;
        y[5] = 0x0;
        y[6] = 0x0;
        x = 89;
        x += 1;
        z -= 99;
        x += 1;
        x += 1;
        x += 1;
        x += 0x0;
        x += 0;
    }
}
