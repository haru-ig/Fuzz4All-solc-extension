pragma solidity ^0.8.0;
contract Mutate2 {
  uint public _contractValue;
  uint[] public _array;
  uint _amount;
  constructor(uint am) {
    _array[am] = am+3;
    _amount = am;
  }
  function ChangeArray() public {
    _amount= _amount+_array[(_contractValue)];
  }
}
