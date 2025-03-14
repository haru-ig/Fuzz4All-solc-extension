pragma solidity ^0.8.0;
contract Caller7 {
  address _receiver;
  address payable _sender;
  constructor(address payable _address) {
    _receiver = _address;
  }

  receive() external payable {}
}
