pragma solidity ^0.8.0;
library Math {
  function multiply(uint256 a, uint256 b) internal pure returns (uint256) {
    require(a == 0 || uint256(a) >= b, "Math: multiplication overflow");
    uint256 c = a * b;
    require(c / a == b, "Math: multiplication underflow");
    return c;
  }
  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;
    require(c >= a, "Math: addition overflow");
    return c;
  }
}
