pragma solidity ^0.8.0;
contract Mutate2 {
  struct Bunch {
    uint id;
    uint price;
  }
  address payable public _address;
  uint public _amount;

  Bunch[] public _array;
  constructor(uint amt, Bunch[] memory _arry) {
    _address = payable(msg.sender);
    _amount = amt;
    _array = _arry;
  }
}
