pragma solidity ^0.8.0;
contract MutatedExamples6 {
    function mutated3(address, uint x) public returns(uint y) {
        uint ytemp;
        if (x!= 0) {
            ytemp = x+100;
        } else {
            return 0;
        }
        return ytemp;
    }
}
