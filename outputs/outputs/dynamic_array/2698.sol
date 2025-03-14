pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations34_Modifications_Mod
{
    uint x = 1337;
    uint[9] y;
    int z;
    constructor() public {
        for(uint i = 0; i < 8; i++) {
            y[i] = i;
        }
        y[5] += 99;
    }
    function add(uint _y) public {
        x += 88;
    }
}
