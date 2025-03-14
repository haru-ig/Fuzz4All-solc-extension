pragma solidity ^0.8.0;
contract MutatedExamples6 {
    function mutated1(address, int x) public returns(int y) {
        int ytemp = 500;
        return x + ytemp;
    }
}
