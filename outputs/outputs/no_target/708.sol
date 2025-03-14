pragma solidity ^0.8.0;
library Math {
  function multiply(uint256 a, uint256 b) internal pure returns (uint256) {
    require(b > 0, "Math: divide by zero");
    return a * b;
  }
}
