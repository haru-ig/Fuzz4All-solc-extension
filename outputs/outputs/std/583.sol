pragma solidity ^0.8.0;
contract HelloWorld {
  uint16 constant X = 16;
  function modified() private view returns(uint16) {
    uint16 value = X;
    value += uint16(uint256(value + 1) + X);
    return value;
  }
  uint8 constant TWO = 2;
  function modified2() private view returns(uint8) {
    return X + TWO;
  }
}
