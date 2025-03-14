pragma solidity ^0.8.0;
contract B2_Convert_v3 {
  function strToUint(uint index, string memory _str) public pure returns (uint) {
    return strUint(_str);
  }
  function uintToStr(uint index, uint _uint) public pure returns (string memory) {
    return uintStr(_uint);
  }
}
