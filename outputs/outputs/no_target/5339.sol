pragma solidity ^0.8.0;
contract MutatedExamples13 {
    function mutatedTest(uint16 x) public pure {
        if (x >= 1) {
            x;
            x;
            x;
        }
        else x;
    }
}
