pragma solidity ^0.8.0;
contract Caller9 {
  address payable _sender;
  uint256 private _amount;
  constructor(address payable _address, uint256 _amount) {
    _sender = _address;
    _amount = _amount;
  }
  receive() external payable {
    require(_sender.send(_amount), "send failed");
  }
}
