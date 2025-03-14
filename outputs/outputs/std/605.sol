pragma solidity ^0.8.0;
contract ModTwoByTwos3 {
  uint8 constant X = 3;
  uint256 constant X2 = 8;
  function mod(uint8 y) public pure returns (uint8) {
    uint256 t;
    t = TWO + X;
    if (y <= t) {
      return y;
    } else {
      return uint8(uint256(y) - uint256(t));
    }
  }
  uint256 constant TWO = 1;
  uint256 constant THREE = 3;
  function mod3(uint256 y) public pure returns (uint256) {
    uint256 r;
    r = TWO + X2;
    if (y < THREE) {
      return r;
    } else {
      return uint256(y) - r;
    }
  }
}
contract A {
  function f(uint8 x) public pure returns (uint) {
    return mod(x);
  }
  function g(uint256 x) public pure returns (uint) {
    return mod2(x);
  }
  function h(uint32 x) public pure returns (uint32) {
    return mod3(x);
  }
}
contract B is A {
  uint8 constant X4 = 4;
  uint256 constant X42 = 284;
  uint256 constant TWO = 1;
  uint256 constant THREE = 3;
  uint8 constant FOUR = 4;
  uint256 constant FOUR2 = 8;
  uint8 constant FOUR3 = 9;
  uint256 constant FOUR4 = 12;
  uint256 constant FOUR5 = 16;
  function f(uint8 x) public pure returns (uint) {
    if (x == X) {
      return X4;
    } else {
      return A.f(x);
    }
  }
  function g(uint256 x) public pure returns (uint) {
    if (x == X2) {
      return X42;
    } else {
      return A.g(x);
    }
  }
  function h(uint32 x) public pure returns (uint32) {
    if (x == X3) {
      return X43;
    } else {
      return A.h(x);
    }
  }
}
contract C is B {
  function h(uint32 x) public pure returns (uint32) {
    if (x == X4) {
      return X44;
    } else {
      return B.h(x);
    }
  }
}
