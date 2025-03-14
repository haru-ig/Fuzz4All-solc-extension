pragma solidity ^0.8.0;
contract MutatedExamples3 {
    uint i = 5;
    function mutated(uint x) public returns (uint) {
        i = x;
        return i/2;
    }
}
