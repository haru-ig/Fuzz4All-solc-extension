pragma solidity ^0.8.0;
contract Caller {
  payable() payable public payable _receiver;
  address _contract;
  constructor(address payable _address, address _contract) {


    _receiver(_address);
  }
  function _receiver (address) public payable {
  }
}
