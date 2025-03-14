pragma solidity ^0.8.0;
contract ModByTwosModByTwos {
  uint8 constant X = 16;
  uint16 constant X2 = 1625;
  uint256 constant TWO = 2;
  function mod(uint8 y) public pure returns (uint8) {
    require(y > 0);
    return uint8(TWO * mod2(uint256(TWO * y)));

  }
  function mod2(uint256 y) public pure returns (uint256) {
    require(y > 0);
    return TWO * mod2(TWO * y);

  }
}
