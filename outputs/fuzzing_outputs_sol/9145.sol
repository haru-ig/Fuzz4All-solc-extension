pragma solidity ^0.8.0;
contract SendEtherCaller9 {
  address payable _address;
  uint256 _amount;
  constructor(address payable _address, uint256 _amount) {
  }
  function receive() external payable override {
  }
}
pragma solidity ^0.8.7;
contract SendEtherCaller9 {
  uint256 _amount;
  address payable _address;
  constructor(address payable _address, uint256 _amount) {
  }
  function receive() external payable override {
  }
}
