pragma solidity ^0.8.0;
using MutatingReturnsArraysWithoutReleasingMemory for MutatingReturnsArraysWithoutReleasingMemory.uint256[];
contract MutatingReturnsArraysWithoutReleasingMemory {
    function add123(uint256 x) pure public returns (uint256 z) {
        z = x + 123;
        return z;
    }
    function subtract7(uint256 x) pure public returns (uint256 z) {
        z = x - 7;
        return z;
    }
    uint256[3] private _uint256ArraysWithNullPointerForReason;
    mapping(uint256 => uint256) private _uint256WithNullPointer;
    uint256[3] private _uint256;
    bool[3] public _nonPublicBool;
}
