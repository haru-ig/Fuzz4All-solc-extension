pragma solidity ^0.8.0;
contract Mutate3 {
  uint public _contractValue;
  address public _address;
  uint[] public _array;
  uint public _amount;
  uint internal getAmount() view returns (uint) {
    return _amount;
  }
  constructor(uint amt2) {
    _address = msg.sender;
    _amount = amt2;
  }
  function ChangeArray(uint arr) view public {
    _array[(_contractValue)]=(_contractValue+arr);
  }
}
