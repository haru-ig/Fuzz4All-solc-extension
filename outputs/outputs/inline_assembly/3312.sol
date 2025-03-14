pragma solidity ^0.8.0;
contract CallMutabilityTwo {
  uint public value1;
  uint public value2;
  address payable public _address1;
  address payable public _address2;
  constructor() {
    value1 = 1;
    value2 = 2;
    _address1 = payable(msg.sender);
    _address2 = payable(msg.sender);
  }
}
contract DetailedReturnForFunction {
  address payable public toAddress;
  function doSomething() public payable {
    toAddress = payable(msg.sender);
  }
}
