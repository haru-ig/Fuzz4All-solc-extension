pragma solidity ^0.8.0;
contract SemanticFallbackReceiving {
  function fallback() receive() internal payable {}
  event LogEmission(uint256 _amount);
}
