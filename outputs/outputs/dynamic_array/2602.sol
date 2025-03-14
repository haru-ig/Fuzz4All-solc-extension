pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations14_mod2{
    uint[]  a1;
    modifier mod1 {
        a1[1]+=1;
        _;
    }
    modifier mod2(uint y) {
        a1[1]+=y;
        _;
    }
    constructor ()    public {
        a1[1]+=1;
    }
    function test() public {}
}
