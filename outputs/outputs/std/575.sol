pragma solidity ^0.8.0;
contract HelloWorld {
  uint8 constant X = 16;
  function modified() private view returns(uint8) {
    uint8 value = X;
    value = uint8(uint256(value + 1) + X);
    return value;
  }
  uint256 constant TWO = 2;
  function modified2() private view returns(uint256) {
    return X + TWO;
  }
}
