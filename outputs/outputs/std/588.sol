pragma solidity ^0.8.0;
contract HelloWorld {
  uint256 public constant X = 15;

  modifier mod2(uint256 y) {
    _;
    assert(mod(x) == X + TWO);
  }

  function mod(uint256 y) private pure returns(uint256) {
    return X + TWO;
  }
  uint256 constant TWO = 2;
  uint256 constant X1 = X + TWO;
  uint256 constant y1 = 3;
  function mod2(uint256 y) public view mod2(y1) {
    return X1 + y1*TWO;
  }
}
 contract HelloWorld {
  uint8 public constant X = 16;
  function mod(uint8 y) private pure returns(uint8) {
    return uint8(uint256(y) + X);
  }
  uint256 constant TWO = 2;
  function mod2(uint256 y) public view mod2(TWO) {
    return X + TWO;
  }
}
