pragma solidity ^0.8.0;
contract Convert {
  function getStringToX(uint i) public pure returns (string memory) {
    return uintToString(i);
  }

  function uintToString(uint x) private pure returns (string memory) {
    uint sign = uint(-1) ^ (uint(1) << (255));
    uint z = (x >= sign) ^ x;
    if (x < 0) return "-";
    if ((_z == x) && (_z < 0x0080000000000000000000000000000000000000000)) return "0";
    return uintToString(_z);
  }
}
