pragma solidity ^0.8.0;
contract SendEtherCaller8 {
  uint256 _amount;
  address payable _address;
  constructor(address payable _address, uint256 _amount) {
  }
  receive() external pure {
  }
}
