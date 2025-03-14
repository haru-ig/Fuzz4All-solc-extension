pragma solidity ^0.8.0;
contract MutatingReturnsArraysWithoutReleasingMemory2 {
    function add123(uint256 x) pure public returns (uint256 z) {
        z = x + 123;
        return z;
    }
    function subtract7(uint256 x) pure public returns (uint256 z) {
        z = x - 7;
        return z;
    }

    uint8[1] private _uint8Values;
    uint8[1] private _uint8ArraysWithNullPointer;
    uint8[1] private _uint8;
    uint8[1] private _uint8ArraysWithNullAndReallocated;
    mapping(uint256 => uint256) private _uint256;
}
