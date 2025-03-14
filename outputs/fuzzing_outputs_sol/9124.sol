pragma solidity ^0.8.0;
contract MutateCaller {
  address payable _address;
  constructor(address payable _address) {
  }
  receive() external payable {
    _address. transfer(msg.value);
  }
}
