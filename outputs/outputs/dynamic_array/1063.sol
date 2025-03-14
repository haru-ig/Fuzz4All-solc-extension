pragma solidity ^0.8.0;
contract MutatingReturnsArraysUnchanged {
    function add74(uint256 x) pure public returns (uint256) { return x + 74; }
    function subtract32(uint256 x) pure public returns (uint256) { return x - 32; }
    uint256[5] private _uint256ArraysWithNullPointerForReason;
    mapping(uint256 => uint256) private _uint256WithNullPointer;
    uint256[5] private _uint256;
    event SetReturnArrays(uint256[] _uint256WithNullPointer, uint256[] _uint256);
    event SetReturnArraysIfLengthIs8(uint256[] _uint256);
}
