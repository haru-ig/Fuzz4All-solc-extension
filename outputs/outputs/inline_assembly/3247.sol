pragma solidity ^0.8.0;
contract Mutate3 {
  uint public _contractValue;
  uint32 public _amount;
  address public _address;
  uint[] public _array;
  function ChangeArrayValue(uint32 a) public returns (uint) {
    uint result=_array[_contractValue]+a;
    _array[_contractValue]=result;
    return result;
  }
  constructor(uint a) {
    _address = msg.sender;
    _amount = a;
  }
}
