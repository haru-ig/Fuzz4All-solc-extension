pragma solidity ^0.8.0;
contract BadCall {
  address payable _contract;

  constructor(address payable contract) {
      _contract = contract;
  }

  fallback():payable returns (bytes memory) {
      _contract.transfer(msg.value);
      return abi.encode(0x1, abi.encode(0x2));
  }
}
