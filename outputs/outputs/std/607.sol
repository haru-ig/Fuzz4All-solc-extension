pragma solidity ^0.8.0;
contract BitCount {
  uint8 constant X = 248;
  uint256 constant X2 = 259;
  function bitCount(uint8 x) public pure returns (uint8) {
    require(x > 0);
    return bitCount2(x);
  }
  function bitCount2(uint256 x) internal pure returns (uint8) {
    require(x > 0);
    uint8 r = 0;
    for (; uint256(int256(x)) >= 1; x >>= 8) {
      ++r;
    }
    return r;
  }
}
