pragma solidity ^0.8.0;
contract MutatingCallsArraysWithoutReleasingMemory {
    function add123(uint256 x) public pure returns (uint256 z) {
        if (x == 123) {
            z = 123;
        } else {
            z = x + 123;
        }
        return z;
    }
    function subtract7(uint256 x) public pure returns (uint256 z) {
        if (x == 7) {
            z = 7;
        } else {
            z = x - 7;
        }
        return z;
    }
    bytes32[1] public _bytes32Values;
    bytes32[1] public _bytes32;
    bytes32[1] public _bytes32ArraysWithNullPointer;
    bytes32[1] public _bytes32ArraysWithNullAndReallocated;
    mapping(uint256 => uint256) public _uint256;
}
