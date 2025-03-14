pragma solidity ^0.8.0;
contract Mutate {
  address payable public _address;
  uint public _amount;
  uint[] public _array;
  constructor(uint amt, uint[12] memory _arry) {
    _address = payable(msg.sender);
    _amount = amt;
    _array = _arry;
  }
}
