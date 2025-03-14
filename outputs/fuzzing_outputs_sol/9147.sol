pragma solidity ^0.8.0;
contract SendEtherCaller {
}
contract HighLevelCaller {
  uint256 _amount;
  address payable _address;
  constructor(uint256 _amount) {
  }
  receive() external payable {
  }
}
