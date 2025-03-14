pragma solidity ^0.8.0;
contract ContractWithFallback {
  address contractToCall;
  constructor(address _contractToCall) public {
    contractToCall = _contractToCall;
  }
}
