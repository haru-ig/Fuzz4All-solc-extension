pragma solidity ^0.8.0;
contract MutatingReturnsArraysMutatedForReason {
    function add255() pure public returns (uint256) { return 255; }
    function subtract256() pure public returns (uint256) { return 256; }
    uint256[] private _uint256WithNullPointer;
    uint256[255] private _uint256ArraysWithNullPointerForReason;
    uint256[] _uint256WithNullPointerForReason;
    uint256[5] private _uint256ArraysWithNullPointerForReason2;

    uint256[255][5] private _uint256ArrayOfArraysWithNullPointerForReason2ForReason;
    event SetReturnArrays(uint256[] _uint256WithNullPointer);
}
