pragma solidity ^0.8.0;
contract Caller4 {
  address _receiver;
  address payable _sender;
  constructor() {
    _receiver = payable(address(this));
    _sender = payable(_receiver);
  }
  receive() external payable {
  }
  fallback() public payable {
    _sender.transfer(msg.value);
  }
}
