pragma solidity ^0.8.0;
contract SemanticFallback {
  receive() external payable {
    require(msg.value > 0);
    emit LogEmission(msg.value);
  }
}
pragma solidity ^0.8.0;
