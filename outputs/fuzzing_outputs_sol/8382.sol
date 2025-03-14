pragma solidity ^0.8.0;
contract SemanticSimilar370_mod2 {
  uint256 a;
  constructor() public {
    a = 0;
  }
  function getA() public pure returns (uint256) {
    return a;
  }
  function setA(uint256 a2) public {
    a = a2;
  }
  fallback () external {
    uint256 b = a;
  }
  receive () external payable {
    uint256 c = a;
  }
}


pragma solidity ^0.8.0;
import "Contracts/SemanticSimilar370.sol";

contract SemanticSimilar370_mod1 {
  SemanticSimilar370 token;

  constructor() {
    token = new SemanticSimilar370();
  }

  function test(uint amount) public {
    uint256 fallbackValue = token.fallback().value;
    assert(fallbackValue == amount);
  }
}
contract SemanticSimilar372 {
  constructor() {}
  fallback () external {

  }
}


contract SemanticSimilar372_mod1 {
  fallback () external {

  }
}


contract SemanticSimilar372_mod2 {
  fallback () external payable {

  }
}
contract SemanticSimilar370_mod3 {
  fallback () external payable {
    uint256 fallbackValue = fallback.value;
  }
}
