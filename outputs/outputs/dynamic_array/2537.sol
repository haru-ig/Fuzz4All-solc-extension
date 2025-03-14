pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations4
{
    struct MyContract
    {
     MyContract(uint x) {a[0] = x;}
    }
    MyContract[] public a;
    constructor() {
        a[0] = a[0];
    }
}
