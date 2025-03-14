pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations
{
    uint[] public a;
    constructor() {
        a[0] = a[1];
        uint c;
        c = a[1];
    }
}
