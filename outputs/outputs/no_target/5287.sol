pragma solidity ^0.8.0;
contract MutatedExamples6 {
    function mutated1(address self, uint x) public returns(uint y) {
        y = self;
        return x+100;
    }
    function mutated2(address self, uint x) public returns(uint y, uint z) {
        y = self;
        uint ztemp = 500;
        return (y temp + 100, 4);
    }
}
