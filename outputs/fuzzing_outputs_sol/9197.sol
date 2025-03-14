pragma solidity ^0.8.0;
contract Caller {
  address public _receiver;
  address payable public _sender;
  bytes32 _check;
  string _check_message;
  mapping(address => uint256) public _balance;
  event LogReceived(address receiver, address sender, uint256 balance);
  constructor(address payable _address) {
    _receiver = _address;
  }
  receive() external payable {
    _balance[_address] += msg.value;
    if(_check == _check_message) {
      _check = "";
      _check_message;
    }
  }
}
