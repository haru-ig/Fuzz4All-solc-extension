pragma solidity ^0.8.0;
contract SemanticNonFallbackOld is SemanticNonFallbackNew {
  receive() public payable {
  }
}
