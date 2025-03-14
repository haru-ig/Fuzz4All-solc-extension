pragma solidity ^0.8.0;
contract Mutate {
   uint8 internal constant _uint8 = 0xF0;
   uint128 internal constant _uint128 = 0xFF;
   uint public _uint;
   uint public _uint8;
   uint public _uint128;
   bool internal _bool;
   bool public _bool8;
   bool public _bool128;
   function getUint40() public pure returns (uint) {
    return _uint;
   }
   function makeUint40() public pure returns (uint) {
    return _uint8;
   }
   function makeUint40() public pure returns (uint) {
    return _uint128;
   }
   function getUint32() public view returns (uint) {
    return uint(uint256(_uint));
   }
   function makeUint32() public view returns (uint) {
    return _uint8;
   }
   function makeUint32() public view returns (uint) {
    return _uint128;
   }
   function makeBool() public pure returns (bool) {
    return _bool8;
   }
   function makeBool() public pure returns (bool) {
    return _bool128;
   }
   function makeUint8() internal pure returns (uint8) {
    return _uint8;
   }
   function makeUint8(uint9 v1) internal pure returns(uint8) {
    return uint8(v1);
   }
   function makeUint8() internal pure returns (uint8) {
    return _uint8;
   }
   function makeUint8(int10 v1) internal pure returns(uint8) {
    require(v1>=0);
    return uint8(v1);
   }
   function makeUint161() internal pure returns (uint16) {
    return _uint128;
   }
   function makeUint162() internal pure returns (uint16) {
    return uint16(_uint);
   }
   function makeUint
