pragma solidity ^0.8.0;
contract SendEtherCaller2 {
  address payable _address;
  constructor(address payable _address) {
  }
  receive() external payable {

  }
}
