pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations14
{
    uint128[] private a;
    constructor () public { }
    function test() public {
        a[0] = 1;
    }
}
