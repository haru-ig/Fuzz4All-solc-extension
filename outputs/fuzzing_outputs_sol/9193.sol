pragma solidity ^0.8.0;
contract Caller {
  address public _receiver;
  address payable public _sender;
  constructor(address payable _address) {
    _receiver = _address;
  }
  receive() external payable {
  }
}
