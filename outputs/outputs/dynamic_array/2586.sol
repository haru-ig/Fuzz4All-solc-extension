pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations14_mod3
{
    uint[] public a_init;
    constructor () public {
        a_init.push(1);
        a_init[0]=1;
    }
    function test() public {
    }
}
