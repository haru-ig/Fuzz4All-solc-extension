pragma solidity ^0.8.0;
contract Caller7 {
  address payable _sender;
  address payable _receiver;
  address _contract;
  constructor(address payable _address, address payable _receiver, address _contract) {
    _sender = _address;
    _receiver = _address;
  }
  receive() external payable {
    _sender.send(msg.value);
  }
  function _receiver(address payable _address) internal {
    _receiver = _address;
  }
}
