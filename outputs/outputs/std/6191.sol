pragma solidity ^0.8.0;
contract SemanticallyNotEquivalent1 {
    uint32 private a;
    function f(uint32 x) public returns (uint32) {
        (a, x) = (2*a + 1, x);
        return x;
    }
}
