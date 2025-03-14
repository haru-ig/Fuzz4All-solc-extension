pragma solidity ^0.8.0;


contract SemanticSimilar371 {
  uint256 a;
  constructor() public {
    a = 1;
  }
  function doSomethingWith(uint256 a) public pure returns (bool) {
    return true;
  }
  fallback () external payable {
    assembly {
      let gas = a
       sstore(0x4, gas)
       sstore(0x1, 0x2)
    }
  }
}
