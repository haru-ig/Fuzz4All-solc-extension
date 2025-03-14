pragma solidity ^0.8.0;
contract CallContractWithFallbackExample2 {
  fallback(address _contractAddress) external payable {}
}
