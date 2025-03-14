pragma solidity ^0.8.0;
contract Mutate6 {
  address payable public _address;
  uint public _amount;
  uint[] public _array;
  constructor(uint amt6) {
    _address = payable(msg.sender);
    _amount = amt6;
  }
}
