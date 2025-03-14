pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations1_mod1{
    uint[] a;
    constructor()public  {
        uint x=1;
        require(a[1]+=uint(--x),x);
        uint y=1;
        a[1]+=a[1]--+uint(x&y);
        uint z=1;
        a[1]+=a[--1+1+1]+uint(x<<2);}
    function test() public {}
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations0_mod0{
    uint[] a;
    modifier mod0 {
        a[1]+=uint(--a[1]);
        _;
    }
    modifier mod1(uint x) {
        a[1]+=x;
        _;
    }
    constructor() public {
        uint y=1;
        a[1]+=y;
        uint z=1;
        z=z+1+1+1+1;}
    function test() public {}
}
