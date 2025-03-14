pragma solidity ^0.8.0;
contract ReceiverExample {
  address payable _receiver;
  address payable receiver() public returns (address payable) { return _receiver; }
}
