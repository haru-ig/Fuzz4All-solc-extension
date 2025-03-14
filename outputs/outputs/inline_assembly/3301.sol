pragma solidity ^0.8.0;
contract CallMutability {
  uint public value1;
  uint public value2;
  address payable public _address;
  constructor() {
    _address = payable(msg.sender);
    value1 = 1;
    value2 = 2;
  }
}
