pragma solidity ^0.8.0;


pragma solidity ^0.8.0;
library SafeMath {

  function addition(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;
    require(c >= a, "SafeMath: addition overflow");

    return c;
  }


  function subtraction(uint256 a, uint256 b) internal pure returns (uint256) {
    return subtractionSigned(a, b);
  }


  function subtractionSigned(int256 a, int256 b) internal pure returns (int256) {
    require((a ^ b) >= 0, "SafeMath: subtraction overflow");
    uint256 c = a - b;

    return c;
  }


  function multiplication(uint256 a, uint256 b) internal pure returns (uint256) {



    if (a == 0) {
      return 0;
    }

    uint256 c = a * b;
    require(c / a == b, "SafeMath: multiplication overflow");

    return c;
  }

  /**
   * @dev Returns the integer division of two unsigned integers. Reverts on
   * division by zero. The
