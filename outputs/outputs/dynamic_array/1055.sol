pragma solidity ^0.8.0;
contract MutatingReturnArraysMutated {
    function getUintWithNullPointer() pure public returns (uint256) { return _uint256WithNullPointer; }
    function getUintArrayWithNullPointer() pure public returns (uint256[] memory) { return _uint256ArraysWithNullPointerForReason; }
    mapping(uint256 => uint256) private _uint256WithNullPointer;
    mapping(uint256 => uint256[]) private _uint256ArraysWithNullPointerForReason;
    event SetReturnArrays(uint256 _uint256WithNullPointerOfUint, uint256 [] _uint256ArraysWithNullPointerOfUints);
    event SetReturnArraysForReason(uint256 _uint256Value, uint256 [] _uint256ValueArray);
}
