pragma solidity ^0.8.0;
contract Caller8 {
  address payable _receiver;
  address _sender;
  constructor(address _address) {
    _receiver = _address;
  }
  receive() external payable {
  }
}
contract Caller9 {
  address payable _receiver;
  address payable _sender;
  constructor(address payable _address) {
    _receiver = _address;
  }
  receive() external payable {
  }
}
