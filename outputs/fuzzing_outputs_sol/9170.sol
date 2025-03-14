pragma solidity ^0.8.0;
contract Caller1 {
  address _sender;
  constructor(address _sender) {
    _receiver(_sender);
  }
  receive() external payable {
  }
  function _receiver(address _sender) internal {
    _sender = _sender;
  }
}
contract Caller2 {
  address _sender;
  address _contract;
  address _destination;
  constructor(address _contract,address _destination) {
    _receiver(_destination);
  }
  receive() external payable {
  }
  function _receiver(address _destination) internal {
    _sender = msg.sender;
    _contract = _destination;
  }
}
contract Caller3 {
  address _sender;
  address _contract;
  constructor(address _contract) {
    _receiver(_contract);
  }
  receive() external payable {
  }
  function _receiver(address _contract) internal {
    _sender = msg.sender;
    _contract = _contract;
  }
}
