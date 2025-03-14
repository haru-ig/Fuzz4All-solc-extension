pragma solidity ^0.8.0;
library Arithmetic {
  uint256 internal constant MAX_VALUE = 2**256 - 1;

  function mul(uint256 left, uint256 right) internal pure returns(uint256) {
    uint256 leftBits = 0;
    while (left >= uint256(1) && leftBits < 256 - 1) {
      leftBits += 1;
      left >>= 1;
    }
    uint256 rightBits = leftBits;
    while (right >= uint256(1) && rightBits < 256 - 1) {
      rightBits += 1;
      right >>= 1;
    }
    return left * power(max(left, right), rightBits);
  }

  function min(uint256 a, uint256 b) internal pure returns(uint256) {
    if (a > b) {
      return a;
    }
    return b;
  }

  function max(uint256 a, uint256 b) internal pure returns(uint256) {
    if (a > b) {
      return a;
    }
    return b;
  }

  function power(uint256 value, uint256 power) internal pure returns(uint256) {
    uint256 result = 1;
    while (power > 0) {
      if ((power & 1) == 1) {
        result *= value;
      }
      power >>= 1;
      value *= value;
    }
    return result;
  }
}
