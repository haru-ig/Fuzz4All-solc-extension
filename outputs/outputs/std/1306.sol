pragma solidity ^0.8.0;
contract Array {
  function sum(uint16[] memory s) public pure returns (uint16) {
    uint16 result = 0;
    for (uint16 i = 0; i < s.length; ++i) {
      result += s[i];
    }
    return result;
  }
}
