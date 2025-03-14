pragma solidity ^0.8.0;
contract CallMutabilityThree {
  uint public value1;
  uint public value2;
  address payable public _to;
  constructor() {
    value1 = 64;
    value2 = 196 + value1;
    _to = payable(msg.sender);
  }
}
