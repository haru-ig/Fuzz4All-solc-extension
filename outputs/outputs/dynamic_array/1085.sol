pragma solidity ^0.8.0;
contract MutatingReturnsArraysWithoutReleasingMemory {
    function add123(uint256 x) pure public returns (uint256 z) {
        z = x + 123;
        return z;
    }
    function subtract7(uint256 x) pure public returns (uint256 z) {
        z = x - 7;
        return z;
    }
}
