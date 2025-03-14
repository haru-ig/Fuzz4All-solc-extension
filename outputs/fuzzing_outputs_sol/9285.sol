pragma solidity ^0.8.0;
contract SemanticFallbackMutated {
  fallback() external {
    require(msg.data.length > 0);

    (uint256 x) = abi.decode(msg.data, (uint256));
    emit LogEmission(x);
  }
  event LogEmission(uint256 _amount);
}
