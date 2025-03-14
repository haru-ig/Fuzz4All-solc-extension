pragma solidity ^0.8.0;
contract ContractWithFallback16 {
  calldata Empty;

  receive() external pure {
    Empty = calldata('');
  }
}
