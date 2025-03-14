pragma solidity ^0.8.0;
contract SendEtherCaller9 {
  address payable _address;
  uint256 _amount;
  constructor(address payable _address, uint256 _amount) {
  }
  receive() external payable {
  }
}
contract SendEtherCaller10 {
  address payable _address;
  uint256 _amount;
  constructor(address payable _address, uint256 _amount) {
  }
  receive() external {
    require(data.length == 0);
  }
}
