pragma solidity ^0.8.0;
contract SemanticallyNotEquivalent2 {
    uint32 a;
    function f(uint32 x) public returns (uint32){
        a += 2;
        return a;
    }
}
