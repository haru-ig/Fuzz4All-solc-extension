pragma solidity ^0.8.0;
contract MutatedCaller {
  MutatedFallback public s;

  constructor(MutatedFallback _state) public {
    s = _state;
  }

  fallback() public payable {
    address addr = msg.sender;
    s.receiveData.value(msg.value)(addr);
  }
}
