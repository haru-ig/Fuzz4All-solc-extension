pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations3
{
    uint128[] public a;
    constructor() {
        a[128] = uint128(a[128])
    }
}
