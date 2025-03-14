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
    _array.push(1);
    _array[1]=1;
    _array[2]=1;
    _address=msg.sender;
    _array.push(3);
    _array[3]=3;
    _array[4]=3;
    _address=msg.sender;
    _array.push(5);
    _array[5]=5;
    _array[6]=5;
    _address=msg.sender;
    _array.push(7);
    _array[7]=7;
    _array[8]=7;
    _address=msg.sender;
    _array.push(9);
    _array[9]=9;
    _array[10]=9;
  }
  function ChangeArrayValue(uint v) public returns (uint) {
    uint result=_array[_contractValue]+v;
    return result;
  }
}
