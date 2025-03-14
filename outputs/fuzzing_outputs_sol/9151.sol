pragma solidity ^0.8.0;
contract Caller {
}
contract HighLevelCaller {
  uint256 _amount;
  address payable _address;
  uint256 _value;
  constructor(uint256 _amount) {
    _value = _amount;
  }
  receive() external payable {
  }
}
