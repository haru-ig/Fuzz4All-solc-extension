pragma solidity ^0.8.0;
contract ModByTwosModByTwos2 {
  uint8 constant X = 4;
  uint16 constant X2 = 17;
  uint256 constant TWO = 2;
  uint256 constant Y = 5;
  function mod(uint8 y) public pure returns (uint8) {
    uint256 t = uint256(TWO * (y - 1));
    return uint8(TWO * (mod2(uint256(TWO * t))));
  }
  function mod2(uint256 y) public pure returns (uint256) {
    require(y > 0);
    return TWO * mod2(TWO * y);
  }
  function mod3(uint256 a, uint256 b) public pure returns (uint256) {
    uint256 c = a * a * a;
    uint256 d = b * b;
    return uint256(b * (c % d));
  }
}
