pragma solidity ^0.8.0;
contract SemanticSimilar370 {
  uint256 a;
  constructor() public {
    a = 0;
  }
  function getA() public pure returns (uint256) {
    return 14;
  }
  function setA(uint256 a) public {
    a = a;
  }
  fallback () external {
    uint256 b = a;
  }
  receive () external payable {
    uint256 c = a;
  }
}
contract SemanticSimilar370_mod2 {
  uint256 a;
  constructor() public {
    a = 0;
  }
  function getA() public pure returns (uint256) {
    return 14;
  }
  function setA(uint256 a3) public {
    a = a3;
  }
  fallback () external {
    uint256 b = a;
  }
  receive () external payable {
    uint256 c = a;
  }
}
pragma solidity ^0.8.0;
library SafeMath {

    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }


    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return sub(a, b, "SafeMath: subtraction overflow");
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
