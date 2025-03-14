pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations6
{
    uint128[] public a;
    constructor() {
        a = a + [100];
        if(a.length < 0x20)
        {
            a = a + [100];
        }
        a = a + [100];
    }
}
