pragma solidity ^0.8.0;
contract SemanticallyNotEquivalent12 {
    uint32 a;
    function f(uint32 x) public returns (uint32){
        return a + x;
    }
}
