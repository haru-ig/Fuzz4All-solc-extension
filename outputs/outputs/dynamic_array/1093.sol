pragma solidity ^0.8.0;
contract MutatingReturnsArraysWithoutReleasingMemory13 {
    function subtract3(uint256 x) pure public returns (uint256 z) {
        z = x - 3;
        return z;
    }
    function add5(uint256 y) pure public returns (uint256 z) {
        z = y + 5;
        return z;
    }
    uint8[1] private _uint8Values;
    uint8[1] private _uint8ArraysWithNullPointer;
    uint8[1] private _uint8;
    uint8[1] private _uint8ArraysWithNullAndReallocated;
    mapping(uint256 => uint256) private _uint256;
}
