pragma solidity ^0.8.0;

contract SemanticEquality_ArrayMutations5
{
    uint128[] public a;
    constructor ()
    {
        a.push(0x20);
        a[0] -= 1;
    }
}












contract SemanticEquality_ArrayMutations6
{
    function f ()
    {
        uint128[] memory a;
        a.push(100);
        a[0] -= 1;
        a[0x0] = 0;
    }
}
