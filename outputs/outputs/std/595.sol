pragma solidity ^0.8.0;
contract ModByTwos {
  uint8 constant X = 16;
  function mod2(uint256 y) private returns(uint256) {
    require(y > 0);
    return TWO + X;
  }
  function mod(uint8 y) private returns(uint8) {
    require(y > 0);
    return uint8(uint256(y) + X);
  }
}
