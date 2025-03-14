pragma solidity ^0.8.0;
contract HelloWorld {
  uint256 constant X = 16;
  function mod(uint256 y) private pure returns(uint8) {
    return uint8(uint256(y) + X);
  }
  uint256 constant TWO = 3;
  function mod(uint8 y) private pure returns(uint256) {
    return X + TWO + mod2(TWO);
  }
}
