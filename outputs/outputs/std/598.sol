pragma solidity ^0.8.0;
contract ModByTwos {
  uint8 constant X = 16;
  function mod(uint8 y) public pure returns (uint8) {
    require(y > 0);
    return uint8(uint256(y) + X);
  }
  uint256 constant TWO = 2;
  function mod2(uint256 y) public pure returns (uint256) {
    require(y > 0);
    return TWO + X;
  }
}
