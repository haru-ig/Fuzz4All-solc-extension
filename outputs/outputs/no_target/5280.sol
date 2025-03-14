pragma solidity ^0.8.0;
contract MutatedExamples5 {
    function mutated1(address, uint x) public returns(uint y){
        return x;
    }
    function mutated2(address, uint x) public {
        return x;
    }
}
