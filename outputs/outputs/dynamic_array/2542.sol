pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations5
{
    uint128[] public a;
    constructor() {
        a.push(a1[0]);
        a1.push(a1[0]);
    }
    uint128[] a1;
}
