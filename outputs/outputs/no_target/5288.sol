pragma solidity ^0.8.0;
contract MutatedExamples6 {
    function mutated1(address, uint x) public returns(uint y) {
        require(x > 0 && x > 100, "Arguments out of boundary not allowed");
        y = 500*(x-100);
        return y;
    }
    function mutated2(address, uint x) public returns(uint y, uint z) {
        require(x > 0, "Negative arguments not allowed");
        uint ytemp = 500*(x-100);
        return (ytemp + 100, ytemp*5);
    }
}
