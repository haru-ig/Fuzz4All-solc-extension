pragma solidity ^0.8.0;
contract SemanticNonFallbackMutated {
  receive () external payable {
  }
}

pragma solidity ^0.8.0;
contract SemanticNonFallbackMixed {
  receive () external payable {
  }
  receive () public pure returns (string memory) {
    return "This is a plain Ether transfer";
  }
}
