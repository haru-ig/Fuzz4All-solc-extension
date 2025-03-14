pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations
{
    uint public a;
    constructor() {
        a = uint(a);
    }
}
