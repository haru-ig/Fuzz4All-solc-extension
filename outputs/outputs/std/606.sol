pragma solidity ^0.8.0;
contract ModByFives {
  uint8 constant X = 50;
  uint55 constant THIRD = uint55(50);
  function mod(uint8 x) public pure returns (uint8) {
    require(x > 0);
    return uint8(x + X);
  }
  function mod50(uint55 x) public pure returns (uint55) {
    require(x > 0);
    return uint55(THIRD) + X;
  }
}
