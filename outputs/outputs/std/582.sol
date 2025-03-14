pragma solidity ^0.8.0;
contract HelloWorld {
  uint8 constant X = 16;
  function mod(uint8 y) private pure returns(uint8) {
    return uint8(uint256(y) + X);
  }
  uint256 constant TWO = 2;
  function mod2(uint256 y) private pure returns(uint256) {
    return X + TWO;
  }
}
