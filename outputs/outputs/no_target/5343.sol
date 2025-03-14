pragma solidity ^0.8.0;
contract MutatedExamples14 {
    function mutatedTest(uint16 x) public pure {
        uint16 y = uint16(3);
        uint16 z = 10 % y;
    }
}
