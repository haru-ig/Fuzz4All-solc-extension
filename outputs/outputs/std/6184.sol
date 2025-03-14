pragma solidity ^0.8.0;
contract SemanticallyNotEquivalent1 {
    uint32 a;
    function f(uint32 x) public returns (uint32){
        a = 5;
        return 3 * a + x;
    }
}
