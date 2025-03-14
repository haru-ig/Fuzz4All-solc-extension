pragma solidity ^0.8.0;
contract Mutate5 {
  uint public _contractAmount;
  address public _address;
  uint[] public _array;
  uint public _amount;
  function CheckAmount() public view returns (uint) {
    return _amount;
  }
  function ChangeArray(uint arr) public {
    _array[(_contractAmount)]=arr+1;
  }
  constructor(uint amt5) {
    _address = msg.sender;
    _amount = amt5;
  }
}
