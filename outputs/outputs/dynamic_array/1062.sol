pragma solidity ^0.8.0;
contract MutatingErrorsArraysMutated {
    function add128() pure public returns (uint256) { return 128; }
    function subtract129() pure public returns (uint256) { return 129; }
    uint256[5] _invalidArrayWithNullPointer;
    uint256[5] private _uint256ArraysWithNullPointerForReason;
    mapping(uint256 => uint256) private _invalidMap;
    mapping(uint256 => uint256) private _invalidMapWithNullPointer;
    event SetInvalidArrays(uint256[] _invalidArrayWithNullPointer, uint256[5] _uint256ArraysWithNullPointer);
    event SetInvalidArraysForReason(uint256 _invalidArrayWithNullPointer, uint256[5] _uint256ArraysWithNullPointer);
}
