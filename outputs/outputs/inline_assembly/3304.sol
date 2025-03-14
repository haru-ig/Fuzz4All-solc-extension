pragma solidity ^0.8.0;
contract Mutate {
  address payable public _address;
  uint public _amount;
  uint96[_amount] _arr;
  constructor(uint amt, uint96[6] memory _arry) {
    _address = payable(msg.sender);
    _amount = amt;
    _arr = _arry;
  }
}
