pragma solidity ^0.8.0;
contract ContractWithFallbackSemanticallyEquivalent {
  receive() external payable {}
  fallback() external payable {}
}
