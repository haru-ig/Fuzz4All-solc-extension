pragma solidity ^0.8.0;
contract MutatedExamples5 {
    function mutated1(address, uint x) public returns(uint y) {
        require(x > 0, "Negative arguments not allowed");
        return x+100;
    }
    function mutated2(address, uint x) public returns(uint y, uint z) {
        require(x > 0, "Negative arguments not allowed");
        uint ytemp = 500;
        return (ytemp + 100, 4);
    }
}
