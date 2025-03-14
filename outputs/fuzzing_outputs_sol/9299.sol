pragma solidity ^0.8.0;
contract DifferingFallback {
  receive() external payable {}
}
pragma solidity ^0.8.0;
contract SemanticFallback {
  fallback() external payable {
    require(false);
  }
}
pragma solidity ^0.8.0;
contract DifferingFallback {
  receive() external payable {
    require(false);
  }
}
