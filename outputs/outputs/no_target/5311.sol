pragma solidity ^0.8.0;
contract MutatedExamples10 {
    uint x = 5;
    bytes32 constant hash = keccak256("Test");
    function mutated(uint x) public returns(uint y){
        return x;
    }
}
