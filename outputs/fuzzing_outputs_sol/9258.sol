pragma solidity ^0.8.0;
contract SemanticNonFallback {
  receive() external pure {
  }
}
pragma solidity ^0.8.0;
contract SemanticNonFallbackMutated {
  receive() external payable pure {
  }
}
