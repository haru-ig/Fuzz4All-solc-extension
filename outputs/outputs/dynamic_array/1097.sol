pragma solidity ^0.8.0;
contract MutatingReturnsArraysWithReleasingMemory {
    uint8[1] public _uint8Values;
    uint8[1] public _uint8;
    uint8[1] public _uint8ArraysWithNullPointer;
    uint8[1] public _uint8ArraysWithNullAndReallocated;
    mapping(uint256 => uint256) public _uint256;
}

contract MutatingReturnsArraysWithReleasingMemoryWithUnspecifiedSignatures {
    uint8[1] public _uint8Values;
    uint8[1] public _uint8;
    uint8[1] public _uint8ArraysWithNullPointer;
    uint8[1] public _uint8ArraysWithNullAndReallocated;
    mapping(uint256 => uint256) public _uint256;
}
