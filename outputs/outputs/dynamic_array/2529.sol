pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations2
{
    uint128[] public a;
    constructor() {
        a[0] = uint128(a[0]);
    }
}
