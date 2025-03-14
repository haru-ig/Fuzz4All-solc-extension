pragma solidity ^0.8.0;
contract SemanticSimilar82_mut {
  uint256 a;
  constructor() public {
    a = 0;
  }
  function getA() public pure returns (uint256) {
    return 14;
  }
  function doSomethingMod(uint256 a) public {
    a = a;
  }
  receive () external payable {
    uint256 b = a;
  }
  fallback () external {
    uint256 c = a;
  }
}
