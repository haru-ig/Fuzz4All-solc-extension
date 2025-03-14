pragma solidity ^0.8.0;
contract MutatedExamples7 {
    function mutated3(uint x) public returns(uint y) {
        require(x > 0 && x > 100, "Arguments out of boundary not allowed");
        y = 500*(x-100);
        return y;
    }
    function mutated4(address x) public returns(uint y) {
        require(x > 0, "Negative arguments not allowed");
        uint ytemp = 500*(x-100);
        y = ytemp + 100;
        return y;
    }
}
