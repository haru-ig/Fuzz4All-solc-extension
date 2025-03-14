pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations17_orig{
    uint[] a;
    constructor () public {}
    modifier mod1 {
        a[1]+=1;
        _;
    }
    function test() public {
        a[1]++;
        a[2]++;
    }
    modifier mod2(uint y) {
        a[1]+=y;
        a[2]+=y;
        _;
    }
    modifier mod3(uint z) {
        a[1]+=z;
        _;
    }
}
