pragma solidity ^0.8.0;
contract MutatedExamples9 {
    function mutated(uint x) public returns(uint y){
        y = x / 0;
    }
}
