pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations14_mod3
{
    uint[] a;
    constructor () public {
        a=new uint[](1,2,3);
    }
    function test() public {
       delete a[1];
    }
}
