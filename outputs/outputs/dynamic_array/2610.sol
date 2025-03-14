pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations17_mod2 {
    uint x;
    uint y;
    constructor () internal { x=11; y=13; }
    modifier mod1(uint z) {
        x=x+y; y=x+z;
        _;
    }
    function test() public {
        require(x==11&&y==13);
    }
}
