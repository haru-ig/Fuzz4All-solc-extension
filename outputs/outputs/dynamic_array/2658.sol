pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations18_rewritten6{
    constructor(uint x) public {
        x = 99;
        x2 = 5;
        x = 2;
        x4 = (x + x2) + (x2 * x);
    }
}
