pragma solidity ^0.8.0;
contract Mutate6 {
  uint public _contractAmount;
  address public _address;
  uint[] public _array;
  uint public _amount;
  constructor(uint amt6) {
    _address = msg.sender;
    _contractAmount = amt6;
  }
  function ArrayLength() public view returns(uint) {
    return (_array.length);
  }
  function ChangeArray(uint arr) public {
    _array[(_contractAmount)]=arr+1;
    _amount = _amount + 1;
  }
}
