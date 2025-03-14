pragma solidity ^0.8.0;
library Math {
  function multiply(uint256 a, uint256 b) internal pure returns (uint256) {

    (uint256 c, ) =  a * b;

    return c;
  }
  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    (uint256 c, ) =  a + b;
    require(c >= a, "Math: addition overflow");
    return c;
  }
}
pragma solidity ^0.8.0;

contract MathTest is Contract {
  function functionToTest() external pure {
    uint256 x = Math.add(1, 2);
  }
}
