pragma solidity ^0.8.0;
contract SemanticSimilar370_mod_fallback_2 {
  uint256 a;
  constructor() public {
    a = 0;
  }
  function getA() public pure returns (uint256) {
    return 14;
  }
  function doSomethingMod_copy1(uint256 a) public {
    a = a;
  }
  fallback (uint256 b) public {
    uint256 c = a;
  }
}
