pragma solidity ^0.8.0;
contract Caller8 {
  address payable _receiver;
  address payable _sender;
  address _receiver2;
  constructor(address payable _address, address payable _address2) {
    _receiver = _address;
    _receiver2 = _address2;
  }
  receive() external payable {
  }
}
