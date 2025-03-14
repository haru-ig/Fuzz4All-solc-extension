pragma solidity ^0.8.0;
contract MutatingReturnsArraysWithNullPointers {
    mapping(uint256 => bool) _returnTrue;
    function returnTrue() pure public returns (bool) {
        _returnTrue[0];
    }
    function returnFalse() pure public returns (bool) {
        _returnTrue[1];
    }
    mapping(uint256 => uint256) private _uint256ArraysWithNullPointer;
}
