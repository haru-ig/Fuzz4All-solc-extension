pragma solidity ^0.8.0;
contract SemanticDissimilarObject381 {
  uint256 a;
  constructor () public {
    this.a = 3;
  }
  function doSomething(uint256 x) public {
    this.a = x;
  }
}


pragma solidity ^0.8.0;
contract SemanticSimilar559 {
  uint256 a;
  constructor () public {
    a = memoryAddress.internalAddressOf(0);
  }
  fallback() external pure {
    emit Fallback();
  }
  receive() external pure { }
}
