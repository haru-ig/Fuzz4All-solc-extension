pragma solidity ^0.8.0;
contract MutatingReturnsArraysComposed {
    function add74(uint256 x) pure public returns (uint256) { return x + 74; }
    function subtract32(uint256 x) pure public returns (uint256) { return x - 32; }
    uint256[5] composable;
    uint256[5] composableWithNullPointer;
    mapping(uint256 => uint256) private _uint256WithNullPointer;
    uint256[5] private _uint256;
    event SetReturnType(uint256[] _uint256WithNullPointer, uint256[] _uint256);
    event SetReturnTypeIfLengthIs8(uint256[] _uint256);
}
