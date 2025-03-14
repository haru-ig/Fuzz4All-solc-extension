pragma solidity ^0.8.0;
contract SemanticNonFallbackSemanticEquivalent {
  fallback() external payable {
  }
}

pragma solidity ^0.8;
contract SemanticNonFallbackNoErrors {
  fallback() external payable {
  }
}
pragma solidity ^0.8;
contract SemanticNonFallbackNoErrorsReverted {
  fallback() external { revert(); }
}
