pragma solidity ^0.8.0;
contract Caller7 {
  address payable public _sender;
  address public _contract;
  constructor(address payable _address, address _contract) {
    _receiver(_address);
  }
  receive() external payable {
  }
  function _receiver(address payable _address) internal {
    _sender = _address;
  }
}
