pragma solidity ^0.8.0;
contract MutatedExamples14 {
    function mutated(bool x) public pure returns (address y){return x? address(0) : address(1); }
}
