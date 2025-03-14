pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations14_mod1
{
    uint[] private a;
    constructor () public {
        a=new uint[](1);
        a[0]=1;
        a[1]=1;
        a[1]=2;
    }
    function test() public {
    }
}
