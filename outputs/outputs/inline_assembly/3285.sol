pragma solidity ^0.8.0;
contract Mutate8 {
  address payable public _address;
  uint public _amount;
  uint[] public _array;
   constructor(uint amt7) {
    _address = payable(msg.sender);
    _amount = amt7;
  }
}
