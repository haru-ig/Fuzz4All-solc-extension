pragma solidity ^0.8.0;
contract SemanticFallback {
  receive() external payable pure {
  }
}

pragma solidity ^0.8.0;
contract Test {
  SemanticFallback public semanticFallback;
  SemanticNonFallback public semanticNonFallback;
  constructor() {
    semanticFallback = new SemanticFallback();
  }
  function testFallback() public {
    uint256 gas = address(semanticFallback).call.value(10 ether)("");

    assert(gas == 0);
  }
  function testNonFallback() public {
    uint256 gas = address(semanticNonFallback).fallback.value(10 ether)("");

    assert(gas == 0);
  }
}
