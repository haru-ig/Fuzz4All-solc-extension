pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations2
{
    uint128[100] public a;
    constructor() {
        a[99] = uint128(uint128(a[0]));
    }
}
