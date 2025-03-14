pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations35 {
    uint x;
    uint[8] z;

    constructor() public {
        x = 26;
        z[0] = x;
        x += 1;
        x += 1;
        z[1] += 2;
        x += 1;
        x += 1;
        z[2] += 3;
        x += 1;
        z[3] += 4;
        x += 1;
        z[4] += 5;
        x += 1;
        z[5] += 6;
        x += 1;
        z[6] += 7;
        x += 1;
        z[7] += 8;
        x += 1;
        z[8] += 9;
        x += 1;
        x += 1;
        x += 1;
        x += 1;
        x += 1;
        x += 1;
        x += 1;
        x += 1;
        x += 1;
        x += 1;
    }
}
