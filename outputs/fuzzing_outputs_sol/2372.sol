pragma solidity ^0.8.0;

contract MyClass {
  address payable public fallbackPayable;

  constructor() {
    address payable fallbackAddress = msg.sender;
    fallbackPayable = fallbackAddress;
  }

  receive () external payable {
    fallbackPayable.transfer(msg.data);
  }
}
