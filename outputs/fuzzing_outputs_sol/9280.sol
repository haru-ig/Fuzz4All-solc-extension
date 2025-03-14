pragma solidity ^0.8.0;
contract SemanticFallback2 {
  fallback() external payable {
    (bool success, ) = msg.sender.call{value: (msg.value / 2)}("");
    assert(success);
    emit LogEmission(msg.value - msg.value / 2);
  }
  event LogEmission(uint256 _amount);
}
