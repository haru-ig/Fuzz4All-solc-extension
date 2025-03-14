pragma solidity ^0.8.0;
contract CallMutabilityTwo {
  uint public value1;
  uint public value2;
  address payable public _address1;
  address payable public _address2;
  constructor() {
    _address1 = payable(msg.sender);
    _address2 = payable(msg.sender);
    value1 = 1;
    value2 = 2;
  }
}
