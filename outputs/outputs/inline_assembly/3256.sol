pragma solidity ^0.8.0;
contract Mutate2 {
  uint public _contractValue;
  address public _address;
  uint[] public _array;
  uint public _amount;
  function getAmount() public view returns (uint) {
    return _amount;
  }
  constructor(uint amt2) {
    _address = msg.sender;
    _amount = amt2;
  }
  function ChangeArrayValue(uint v) public {
    uint result=_array[(_contractValue)];

    uint newValue=_contractValue+v;
    _array[(_contractValue)=newValue]=newValue;
    return result;
  }
}
