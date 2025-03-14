pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations18_rewritten6{
    constructor() public {
        uint x = 0;
        uint x2;
        uint x3;
        uint x4;
        x3 = 99;
        x = 99;
        x2 = x + 3;
        x = 10;
        x4 = (x + x2) + (x2 * x);
    }
}
