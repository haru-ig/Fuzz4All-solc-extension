pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations14
{
    uint128[] a;
    uint128[] mutable b;
    constructor () public { }
    function test() public {
        a.push(1);
        a[1].sub(1).div(10).mul(10).div(11);
    }
}
