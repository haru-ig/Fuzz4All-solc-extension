pragma solidity ^0.8.0;
contract SemanticSimilar385_mod3 {
  uint256 a;
  constructor() public {
    a = 0;
  }
  function getA() public pure returns (uint256) {
    return 14;
  }
  function setA(uint256 a2) public {
    a = a2;
  }
  fallback () external {
    require(msg.value == 22);

    SemanticSimilar385 instance = SemanticSimilar385_mod2(14);

    instance.setA(14);
  }
}
