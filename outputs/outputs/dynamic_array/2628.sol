pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations17{
    uint[] a;
    modifier mod1{
        a.push(3);
        a.push(3);
        _;
    }
    modifier mod2(uint b){
        a.push(3*b);
        a.push(3*b);
        _;
    }
    modifier mod3(uint c) {
        a.push(5/c);
        a.push(3*c);
        _;
    }
    constructor() public {
        a.push(7);
    }
    function test() public {}
}
