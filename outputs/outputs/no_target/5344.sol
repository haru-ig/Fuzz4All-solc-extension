pragma solidity ^0.8.0;
contract MutatedExamples14 {
    function mutatedTest(uint16 x) public pure {
        if (x >= 1) x x;
        else x;
    }
}
contract MutatedExamples15 {
    function mutatedTest(uint16 x) public pure {
        if (x >= 1) x x x;
        else x;
    }
}
