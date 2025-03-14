pragma solidity ^0.8.0;
contract MutatedExamples5 {
    function mutated1(uint x) public returns(uint y) {
        return x + 50 + uint(50);
    }
    function mutated2(uint x) public returns(uint z, uint y) {
        return (x+50, x-1*(uint(50)));
    }
}
