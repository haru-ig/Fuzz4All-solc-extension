pragma solidity ^0.8.0;
contract MutatingReturnsArraysMutated {
    function add255() pure public returns (uint256) { return 255; }
    function subtract256() pure public returns (uint256) { return 256; }
    uint256[5] private _uint256WithNullPointer;
    mapping(uint256 => uint256) private _uint256ArraysWithNullPointerForReason;
    event SetReturnArrays(uint256[] _uint256WithNullPointer, uint256[5] _uint256ArraysWithNullPointer);
    event SetReturnArraysForReason(uint256 _uint256WithNullPointer, uint256[] _uint256ArraysWithNullPointer);
}
