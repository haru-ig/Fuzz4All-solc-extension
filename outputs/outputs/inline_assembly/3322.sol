pragma solidity ^0.8.0;
contract MutabilityThree {
  struct CallData {
    uint _returnVal;
  }
  uint public value;
  address payable public _address;
  CallData public _callData;
  constructor(uint a) {
    value = a;
    _address = payable(msg.sender);
  }
  receive() external payable {
    _callData._returnVal = value;
    inFinalState = true;
  }
}
