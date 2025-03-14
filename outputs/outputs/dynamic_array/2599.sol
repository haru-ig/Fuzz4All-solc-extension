pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations14_mod1{
    uint[] a;
    modifier mod1 {
        a[1]+=1;
        _;
    }
    modifier mod2(uint y) {
        a[1]+=y;
        _;
    }
    constructor () public {
        a[1]+=1;
    }
    function test() public {}
}
