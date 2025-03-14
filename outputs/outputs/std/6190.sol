pragma solidity ^0.8.0;
contract SemanticallyEquivalent2 {
    uint a = 4;
    uint32 b;
    function f(uint32 x) public returns (uint32){
        a = x;
        return a;
    }
}
contract SemanticallyEquivalent3 {
    uint a = 4;
    uint256 b = 0;
    uint32 c = uint32(a);

    constructor();
    function f(uint32 x) public returns (uint32){
        a = x;
        b = uint(x);
        return a;
    }
    function g(uint32 x) public returns (uint32){
        b = c;
        return b;
    }
    function h(uint32 x) public returns (uint32){
        b = uint(x^c);
        return b;
    }
    function i(uint32 x) public returns (uint32){
        b = a + uint(2 * a);
        return b;
    }
}
