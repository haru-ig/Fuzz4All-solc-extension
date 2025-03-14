pragma solidity ^0.8.0;
contract MutatingReturnsArraysChanged {
    uint256 private _uint256;
    event SetReturnArray(uint256 _uint256);
    uint256[2] fixedUint256ArrayOf2;
    uint256[3] fixedUint256ArrayOf3;
    uint256[2] private _uint256WithNullPointer;
    event SetReturnArraysIfLengthIs8(uint256[2] _fixedUint256ArrayOf2, uint256[3] _fixedUint256ArrayOf3);
 }




pragma solidity ^0.8.0;
contract NonStandardArray {
  uint256[] _uint256;
  uint256[] private _uint256WithNullPointer;
  event SetReturnArray(uint256 _uint256WithNullPointer);
  uint256[3] public _uint256ArrayWith3Elements;
  uint256[64] public _uint256ArrayWith64Elements;

  function addUint16ToLastUint256(uint16 x) public view returns(uint256 z) {
    z = _uint256[_uint256.length - 1] + x;
  }

  function subtractUint16FromLastUint256(uint16 x) public view returns(uint256 z) {
    z = _uint256[_uint256.length - 1
