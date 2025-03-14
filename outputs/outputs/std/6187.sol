pragma solidity ^0.8.0;
contract SemanticallyNotEquivalent2 {
    uint32 a;
    function f(uint32 x) public returns (uint32){
        a = 5;
        x = 3 * a + x;
        return x;
    }
}
