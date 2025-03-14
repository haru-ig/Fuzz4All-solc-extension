pragma solidity ^0.8.0;
contract CallMutabilityThree {
  uint public value1;
  uint public value2;
  bool public inFinalState;
  address payable public _address;
  constructor(uint a, uint b) {
    value1 = a;
    value2 = b;
    inFinalState = true;
    _address = payable(msg.sender);
  }
}
