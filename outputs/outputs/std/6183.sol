pragma solidity ^0.8.0;
contract SemanticallyNotEquivalent13 is SemanticallyNotEquivalent12 {
    function f(uint32 x) public returns (uint32){
        a = a + x;
        return a;
    }
}
