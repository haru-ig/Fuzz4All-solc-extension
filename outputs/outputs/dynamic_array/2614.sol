pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations17_mod2{
    uint[] a;
    modifier mod1 {
        a[1]+=1;
        a[2]+=1;
        _;
    }
    modifier mod2(uint y) {
        a[1]+=y;
        a[1]-=y;
        _;
    }
    modifier mod3(uint z) {
        a[1]+=z;
        a[2]+=z;
        a[2]+=z;
        _;
    }
    constructor () public {
        a[1]+=1;
        a[2]+=1;
        a[2]+=1;
    }
    function test() public {}
}
assembly{
