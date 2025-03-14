pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations17_mod1 {
    uint[] a;
    modifier mod1(uint x) {
        a[1]+=x;
        a[2]+=x;
        _;
    }
    modifier mod2(uint y) {
        a[1]+=y;
        a[2]+=y;
        _;
    }
    modifier mod3(uint z) {
        a[1]+=z;
        a[2]+=z;
        _;
    }


    constructor () private {
        a[3]+=3;
    }
    function test() public {}
}
