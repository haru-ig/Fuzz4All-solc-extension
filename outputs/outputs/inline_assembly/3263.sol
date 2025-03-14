pragma solidity ^0.8.0;
contract Mutate3 {
  uint public _contractValue;
  address public _address;
  uint[] public _array;
  uint public _amount;
  function getAmount() public view returns (uint) {
    return _amount;
  }
  constructor(uint amt3) {
    _address = msg.sender;
    _amount = amt3;
  }
  function ChangeArray(uint arr) public {
    _array[(_contractValue)]=arr+1;
  }
}
