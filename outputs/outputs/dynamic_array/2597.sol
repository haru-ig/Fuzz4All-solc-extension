pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations4_mod2
{
    uint[] private a;
    constructor () public {
        a=new uint[](2);
        a[0]=1;
        a[1]=1;
        a[1]+=10;
    }
    function test() public {
        a[0]+=1;
    }
}
