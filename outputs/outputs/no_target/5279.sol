pragma solidity ^0.8.0;
contract MutatedExamples5 {
    function mutated1(address, uint x) public returns(uint y) {
        return x+100;
    }
    function mutated2(address, uint x) public returns(uint y, uint z) {
        return (x + 100, 4);
    }
}
