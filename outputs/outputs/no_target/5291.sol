pragma solidity ^0.8.0;
contract MutatedExamples6 {
    function mutated1(address, uint a, uint b) public returns(uint, uint) {
        require(a > 0, "Negative arguments not allowed");
        uint ytemp = 500*(b-a);
        return (ytemp + 100, ytemp*5);
    }
    function mutated1(address x, uint a, uint b) public returns(uint) {
        require(b > 0, "Negative arguments not allowed");
        uint, uint ytemp = 500*(b-a);
        return (ytemp + 100);
    }
}
