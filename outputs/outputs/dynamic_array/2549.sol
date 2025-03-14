pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations5
{
    uint128[] public a;
    constructor() {
        a.push(100);
        if(a.length < 0x20)
        {
            a.push(100);
        }
        a.push(100);
    }
}
