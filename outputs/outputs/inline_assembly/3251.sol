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
  function ChangeArrayValue(uint v) public returns (uint) {
    uint _arrayValue=_array[_contractValue]==0?_array.length+1:1;
    uint _result=_array[_contractValue]<3?_amount+v:_array[_contractValue];
    uint _value=_array[_contractValue]>=_result?0:_result;
    _array[_contractValue]=_value;

    return v+'='+_array[_contractValue];
  }
}
