pragma solidity ^0.8.0;
contract MutatedExamples6 {
    function mutated1(address, uint x) public returns(uint y) {
        if (x < 0) throw 100;
        y = 500*(x-100);
        return y;
    }
    function mutated2(address, uint x) public returns(uint y, uint z) {
        uint ytemp = 500*(x-100);
        if (x < 0) throw 100;
        return (ytemp + 100, ytemp*5);
    }
}
