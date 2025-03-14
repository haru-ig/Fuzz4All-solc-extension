pragma solidity ^0.8.0;
contract Mutate {
  address payable public _address;
  uint public _amount;
  constructor (uint amount, address payable victim) {
    _address = victim;
    _amount = amount;
  }
}
