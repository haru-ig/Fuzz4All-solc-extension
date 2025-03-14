pragma solidity ^0.8.0;
contract MutatedExamples13 {
    function mutated(uint16 x) public pure returns (uint z){return x >= 0? x+1 : 0; }
}
