pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations14_mut_mod1
{
    uint[] private a;
    constructor () public {
        a=new uint[](1);
        a[0]=1;
        a[0]=2;
        a[0]=2;
        a[1]=3;
    }
    function test() public {
        a[0]=2;
        a[1]=2;
    }

}
