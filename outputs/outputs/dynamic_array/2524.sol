pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations
{
    uint128 public a;
    constructor() {
        a = uint128(a);
    }
}
