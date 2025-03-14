pragma solidity ^0.8.0;
contract MutatingReturnsArraysWithReleasingMemoryWithDynamicSizes {
    uint8[3] public _uint8Values;
    uint8[2] public _uint8;
    uint8[3] public _uint8ArraysWithNullPointer;
    uint8[2] public _uint8ArraysWithNullAndReallocated;
    mapping(uint256 => uint256) public _uint256;
}
