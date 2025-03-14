pragma solidity ^0.8.0;
contract MutatingReturnsArraysMutated {
    function add255() pure public returns (uint256) { return 255; }
    function subtract256() pure public returns (uint256) { return 256; }
    uint256[5] private _uint256WithNullPointer;
    mapping(uint256 => uint256) private _uint256ArraysWithNullPointerForReason;
    event SetReturnArrays(uint256[] _uint256WithNullPointer, uint256[5] _uint256ArraysWithNullPointer);
    event SetReturnArraysForReason(uint256 _uint256WithNullPointer, uint256[] _uint256ArraysWithNullPointer);
    function getBool() public pure returns (bool) {
        return true;
    }
    function getStatelessBool() public pure returns (bool) {
        return true;
    }
    function getUint256() public pure returns (uint256) {
        return 2;
    }
    function getStatelessUint256() public pure returns (uint256) {
        return 2;
    }
    function addUint256() public pure returns (uint256, uint256) {
        return (2, 2);
    }
    function subtractUint256() public pure returns (uint256, uint256) {
        return (2, 2);
    }
    function add255toUint256() public pure returns (uint256, uint256, uint256) {
        return (2, 2, 2);
    }
    function subtract256fromUint256() public pure returns (uint256, uint256, uint256) {
        return (3, 3, 3);
    }
    function addUint256toUint256() public pure returns (
