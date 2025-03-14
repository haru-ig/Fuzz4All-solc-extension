pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations17_mod2{
    uint[10] a;
    modifier mod1 {
        a[1]+=1;
        a[2]+=1;
        _;
    }
    modifier mod2(uint y) {
        a[1]+=y;
        a[2]+=y;
        _;
    }
    constructor () public {
        a[1]+=1;
        a[2]+=1;
    }
    function test() public {}
}
contract SemanticEquality_ArrayMutations18_mod2{
    uint[10] a;
    modifier mod1 {
        a[1]+=1;
        a[2]+=1;
        a[3]+=1;
        _;
    }
    modifier mod2(uint y) {
        a[1]+=y;
        a[2]+=y;
        a[3]+=y;
        _;
    }
    constructor () public {
        a[1]+=1;
        a[2]+=1;
        a[3]+=1;
    }
    function test() public {}
}
contract SemanticEquality_ArrayMutations19_mod4 {
    uint[256] public a;
    modifier mod1 {
        a[1]+=1;
        a[2]+=1;
        _;
    }
    modifier mod2(uint y) {
        a[1]+=y;
