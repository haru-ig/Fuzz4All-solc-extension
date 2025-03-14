pragma solidity ^0.8.0;
contract ContractWithFallback {
  receive() external payable {}
  fallback() external payable {}
}
