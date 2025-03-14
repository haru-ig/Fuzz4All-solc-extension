pragma solidity ^0.8.0;
contract MutatedExamples7 {
    function mutated8(uint64 x) public returns(uint72 y) {
        require(x > 0);
        y = (uint72(uint256(x)));
        return y;
    }
