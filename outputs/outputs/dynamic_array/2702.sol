pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations37_Modifications_Mod
{
    uint[8] x;
    constructor() public {
        x[0] = 0;
    }
    function add(uint y) public pure {
        x[1] = x[0] * y;
        x[2] = x[0] + y;
        x[3] -= x[0];
        uint _sum = x[3];
        x[0] = _sum + 2;
    }
}
