pragma solidity ^0.8.0;
contract SemanticFallbackWithModifier {
  fallback() external payable {}
  event LogEmission(uint256 _amount);
}
