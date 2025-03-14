pragma solidity ^0.8.0;
contract SemanticFallback {
  fallback() external payable {
    require(msg.value > 0);
    emit LogEmission(msg.value);
  }
  event LogEmission(uint256 _amount);
}
