pragma solidity ^0.8.0;
contract SemanticEquality_MutableArrays16_mod{
    uint256[] a;
    function test() public {}
    modifier mod1 {
        a.push(1);
        _;
    }
    modifier mod2(uint256 y) {
        a.push(y);
        _;
    }
    modifier mod3(uint256 z) {
        a.push(z);
        _;
    }
    constructor () public {
        a.push(1);
    }
}
