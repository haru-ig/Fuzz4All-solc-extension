pragma solidity ^0.8.0;
contract Caller9 {
  address _receiver;
  address payable _sender;
  constructor(address payable _address) {
    _receiver = _address;
  }
  receive(uint256) external payable {
  }
}

contract Caller10 {
 address payable _receiver;
 address _sender;
 constructor(address payable _address) {
   _receiver = _address;
 }

 receive() public payable {
   _sender.send(msg.value);
 }
}
