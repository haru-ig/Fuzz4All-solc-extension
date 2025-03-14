pragma solidity ^0.8.0;
contract MutatingReturnsArraysWithoutReleasingMemory {
    function add6(uint256 x) public returns (uint256 z) {
        z = x + 6;
        return z;
    }
    uint256[1] public _uint256Values;
    uint256[1] public _uint256;
    uint256[1] public _uint256ArraysWithNullPointer;
    uint256[1] public _uint256ArraysWithNullAndReallocated;
    mapping(uint256 => uint256) public _uint256;
}
