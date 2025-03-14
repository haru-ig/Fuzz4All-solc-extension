pragma solidity ^0.8.0;
contract Caller6 {
  address payable _sender;
  address _contract;
  constructor(address payable _address, address _contract) {
    _receiver(_address);
  }
  receive() payable {
  }
  function _receiver(address payable _address) internal {
    _sender = _address;
  }
}
contract Caller7 {
  address payable _sender;
  address _contract;
  constructor(address payable _address, address _contract) {
    _receiver(_address);
  }
  receive() external {
  }
  function _receiver(address payable _address) internal {
    _sender = _address;
  }
}
contract Caller8 {
  address payable _sender;
  address _contract;
  constructor(address payable _address, address _contract) {
    _receiver(_address);
  }
  receive() external payable {}
  function _receiver(address payable _address) internal {
    _sender = _address;
  }
}
contract Caller9 {
  address payable _sender;
  address _contract;
  constructor(address payable _address, address _contract) {
    _receiver(_address);
  }
  receive() external payable {}
  function _receiver(address payable _address) internal {
    _sender = _address;
  }
}
