pragma solidity ^0.8.0;
contract CallerFallbackModify {
  address public _receiver;
  message Payable() {}
  address payable public _sender;
  constructor(address payable _address) {
    _receiver = _address;
    _sender = _address;
  }
  receive() external payable {
    if (msg.value > 1 ether) {
      revert();
    }
    _sender.transfer(msg.value);
  }
}
