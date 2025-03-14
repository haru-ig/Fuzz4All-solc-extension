pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations4
{
    uint128[] public a;
    constructor() {
        a.push(a[0]);
    }
}
