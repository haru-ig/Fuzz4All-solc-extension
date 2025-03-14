pragma solidity ^0.8.0;
contract ContractWithBadFallback {
  fallback() external payable {}
}
