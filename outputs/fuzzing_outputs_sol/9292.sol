pragma solidity ^0.8.0;
contract SemanticFallbackWithoutModifier {
  fallback() public payable {}

  event LogEmission(uint256 _amount);
}
