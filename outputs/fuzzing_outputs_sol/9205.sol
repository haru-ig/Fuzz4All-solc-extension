pragma solidity ^0.8.0;
contract MutatedCallerFallback {
  address public _receiver;
  address payable public _sender;
  uint256 private _balance;
  constructor(address payable _address, uint256 _balance) {
    _receiver = _address;
    _sender = _address;
    _balance = _balance;
  }
  receive() external payable {
    _balance = _balance + msg.value;
  }
}
