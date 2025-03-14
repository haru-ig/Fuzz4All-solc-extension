pragma solidity ^0.8.0;
contract SemanticFallback {
  fallback() external {
    require(msg.data.length > 0);
    emit LogEmission(address(this).balance - msg.data.length);
  }
  event LogEmission(uint256 _amount);
}
