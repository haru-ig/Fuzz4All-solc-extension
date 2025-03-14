pragma solidity ^0.8.0;
contract SemanticNonFallbackSemantic {
  receive() payable external {
  }
  fallback() payable external {
  }
}

pragma solidity ^0.8.0;
contract SemanticNonFallbackDifferent {
  fallback() payable external {
  }
  receive() payable external {
  }
}
