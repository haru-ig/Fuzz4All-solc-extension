pragma solidity ^0.8.0;
contract ModByTwos {
  uint8 constant X = 16;
  function mod(uint8 y) private returns(uint8) {
    require(y > 0);
    return uint8(uint256(y) + X);
  }
  uint8 constant TWO = 2;
  modifier mod2(uint256 y) {
    require(y > 0);
    _;
  }
  uint256 constant TWO2 = TWO + X;
  function mod2(uint256 y) public mod2(y) returns(uint256) {
    require(y > 0);
    return TWO2;
  }
}
