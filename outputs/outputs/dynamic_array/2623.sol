pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations17_orig{
    uint[1] memory a1;
    uint[2] memory a2;
    modifier mod1 {
        a1[1]+=1;
        a2[1]+=1;
        _;
    }
    modifier mod2(uint y) {
        a1[1]+=y;
        a2[1]+=y;
        _;
    }
    modifier mod3(uint z) {
        a1[1]+=z;
        a2[1]+=z;
        _;
    }
    constructor () public {
        a1[1]+=1;
    }
    function test() public {}
}
