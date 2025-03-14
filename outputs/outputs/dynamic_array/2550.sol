pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations6
{
    uint128[] public a;
    constructor() {
        a.push(100);
        if(a[2] > uint128(0))
        {
            a[3] = 100;
        }
        a[3] = 100;
    }
}
