pragma solidity ^0.8.0;
contract Mutate2 {
  uint public _contractValue;
  address public _address;
  mapping(address => address) private _userToAddress;
  mapping(address => uint) private _userToAmount;
  uint[] public _array;
  uint public _amount;
  function getAmount() public view returns (uint) {
    return _amount;
  }
  constructor(uint amt) {
    _address = msg.sender;
    _amount = amt;
  }
  function ChangeArray(uint arr) public {
    _amount = arr;
    _array[(_contractValue)] = (_contractValue+arr);
  }
}
