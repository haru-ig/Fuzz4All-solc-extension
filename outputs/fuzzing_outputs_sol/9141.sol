pragma solidity ^0.8.0;
contract SendEtherCaller2 {
  address payable _address;
  uint8 _amount;
  constructor(__amount memory _amount) {
    __amount;
  }
  receive() external payable {
  }
}
contract SendEtherCaller1 {
  address payable _address;
  uint8 _amount;
  constructor(__amount memory _amount) {
    __amount;
  }
  receive() external payable {
  }
}
