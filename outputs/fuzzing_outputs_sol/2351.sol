pragma solidity ^0.8.0;
contract MutatedCaller {
  uint mut amount;
  constructor(address old) { balance = old.balance; }
  address public oldContractAddress;
  receive () external payable {
    amount += msg.value;
  }
}
