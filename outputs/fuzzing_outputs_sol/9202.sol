pragma solidity ^0.8.0;
contract MutatedCallerFallback {
  address public _receiver;
  address payable public _sender;
  constructor(address payable _address) {
    _receiver = _address;
  }
  receive() external {
    _sender.call{value: address(this).balance}("");
    assert(msg.data.length == 0);
  }
}
