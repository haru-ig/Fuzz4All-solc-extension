pragma solidity ^0.8.0;
contract Mutate2 {
  uint public _contractValue;
  address public _address;
  uint[] public _array;
  uint public _amount;
  function getAmount() public view returns (uint) {
    return _amount;
  }
  function ChangeArrayValue(uint v) public {
    _array[_contractValue]+=v;
  }
  constructor(uint amt2) {
    _address = msg.sender;
    _amount = amt2;
  }
}
