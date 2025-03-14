pragma solidity ^0.8.0;
contract Math {
  uint256 public a = 5;
  uint8 public b = 0xB;
  uint8 public c = 0x2;
  uint16 public d = 150;
  uint64 public e = 3500000000;
  uint32 public f = 200;
  uint256 public g = 4 * 10 ** 8 * 10 ** 9;
  uint256 public h = uint8(a > 2 and a > 5? 1 : 0);
  uint256 public i = uint8(b > 3);
  uint256 public j = uint8(c > 5);
  uint256 public k = uint8(3 > 1);
  uint256 public l = uint8(2 > 1);
  uint256 public m = uint8(3 > 2);
  uint256 public n = uint8(5 > 2);
  uint256 public o = 112 <= 116 <= 20;
  uint256 public p = 119 <= 123 <= 15;
  uint256 public q = 131 <= 135 <= 20;
  function sum(uint256 x, uint256 y) public pure returns (uint256) {
    return x + y;
  }
  function abs(uint256 x) public pure returns (uint256) {
    if (x < 0) {
      return x * 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff + 1;
    } else {
      return x;
    }
  }
  function div(uint256 x, uint256 y) public pure returns (uint256) {
    return x / y;
  }
  function min(uint256 x, uint256 y) public pure returns (uint256) {
    return uint256(x <= y? x : y);
  }
  function max(uint256 x, uint256 y) public pure returns (uint256) {
    return uint256(x >= y? x : y);
  }
  function sqrt(uint8 x) public pure returns (uint8) {
    return uint8(sqrt(uint256(x)));
  }
  function modulo(uint256 x, uint256 y) public pure returns (uint256) {
    return (x % y + y) % y;
  }
  function leftShift(uint256 x, uint8 y) public pure returns (uint256) {
    return uint256(x << y);
  }
  function rightShift(uint256 x, uint8 y) public pure returns (uint256) {
    return uint256(x >> y);
  }
  function multiply(uint8 x, uint8 y) internal pure returns (uint8) {
    return uint8(uint256(x) * uint256(y));
