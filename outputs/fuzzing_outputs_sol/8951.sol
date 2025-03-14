pragma solidity ^0.8.0;

contract ContractWithFallback {
  constructor() {
    _();
  }
  fallback () external pure {
    return(keccak256("fallback"));
  }
}
