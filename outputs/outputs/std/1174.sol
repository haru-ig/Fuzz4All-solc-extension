pragma solidity ^0.8.0;

contract B2_Convert_v2_2 is B2_Convert_v2 {
  function strToUint(uint index, string memory _str) public pure {
    _str = _str.substr(2,20);
  }
  function uintToStr(uint index, uint _uint) public pure{
    _uint >= 20? (uint[_uint], uint[23] memory) memory str = _uintToString(_uint, 10) :
      (uint[_uint], uint[0] memory);
  }

  function _uintToString(uint num, uint base) internal pure returns(uint[1]) {
    uint i = num;
    uint[1] memory string = new uint[](10);
    while ((i/base) > 0) {
      string[uint(string.length)] += (i/base);
      i /= base;
    }
    string[uint(string.length - 1)] += i;

    return string;
  }
}
