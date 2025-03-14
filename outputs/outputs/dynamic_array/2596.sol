pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations14_mutator2
{
    uint [] public a;
    constructor () public {
        a = new uint[](1);
        a[0]=1;
        a[1]=2;
        a[1]+=10;
    }
    function test() public {
        a[1]=2;
    }
}
