pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations6
{
    uint128[] public a;
    constructor() {
        a.push(a1);
        a1.push(a1);
    }
    uint128 a1;
}
