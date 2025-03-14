pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations21_rewritten7{
    constructor() public {
        uint[] storage y;
        uint[] storage y2 = new uint[](1);
        y[1] = 1;
        uint a1 = y[0];
        uint b1 = a1 - 3;
        uint a2 = y2[0];
        uint b2 = a2 + 3;
    }
}
