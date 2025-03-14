pragma solidity ^0.8.0;
contract SemanticallyNotEquivalent2 {
    uint32 a;
    function f(uint32 x) public returns (uint32){
        a = 1 + x;
        a = a - 1;
        return a + a;
    }
}
