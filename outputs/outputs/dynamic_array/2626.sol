pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations17_new{
    uint[] a = new uint[](3);
    uint a3;
    constructor () public {
        a3=3;
    }
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
    modifier mod3(uint z) {
        a[1]+=z;
        a[2]+=z;
        _;
    }
    function test() public {}
}
