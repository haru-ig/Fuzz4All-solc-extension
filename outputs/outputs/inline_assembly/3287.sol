pragma solidity ^0.8.0;
contract Mutate2 {
  address payable public _address;
  uint public _amount;
  uint[] public _array;
  constructor(uint _firstElement1, uint _firstElement2, uint _firstElement3, uint _firstElement4) {
    _address = payable(msg.sender);
    _amount = _firstElement1;
    _array.push(_firstElement2);
    _array.push(_firstElement3);
    _array.push(_firstElement4);
  }
}
