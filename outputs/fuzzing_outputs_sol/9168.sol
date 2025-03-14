pragma solidity ^0.8.0;
contract Caller4 {
  address payable _sender;
  address _contract;
  constructor(address payable _address, address _contract) {
    _receiver(_address);
  }
  receive() external payable {
  }
  function _receiver(address payable _address) internal {
    _sender = _address;
  }
}
