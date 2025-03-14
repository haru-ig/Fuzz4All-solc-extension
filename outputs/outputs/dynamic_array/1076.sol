pragma solidity ^0.8.0;
contract MutatingReturnsArraysModified2 {
    address private _addressForData;
    uint256[3] private _uint256ArraysWithNullPointerForReason;
    mapping(uint256 => uint256) private _uint256WithNullPointer;
    uint256[3] private _uint256;
    event SetReturnArrays(uint256[] _uint256WithNullPointer, uint256[] _uint256);
    event SetReturnArraysIfLengthIs8(uint256[] _uint256);
    address constant addressForData = 0x03C420679B70655E76639BE2C924B921A3E4129F;
    uint256 constant dataForData = 0x1000000000000000000000000000000001;
    constructor() { _addressForData = addressForData; }
    function () external payable {
        require(addressForData == msg.sender);
        require(_uint256.length == 3);
    }
    function _addReturnArraysInContract(uint256 _length) payable public returns (uint256 a, uint256 b, uint256[3] memory, uint256[3] memory, uint256[3] memory) {
        a = _uint256.length - _length;
        b = _add123ToLength(_length);
        _uint256And256ArraysWithNullPointer = ArrayMath.add(_uint256, a, b);
        _uint256WithNullPointer = ArrayMath.add(addressToUint256(_addressForData), a, b);
