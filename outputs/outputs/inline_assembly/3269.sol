pragma solidity ^0.8.0;
contract Mutate1 {
  uint public _contractValue;
  address public _address;
  constructor(uint amt1) {
    _address = msg.sender;
    _contractValue=amt1;
  }
  function ChangeArray(uint arr) public {
    _array[(_contractValue)]=arr+1;
  }
}

pragma solidity ^0.8.0;
contract Mutate2 {
  uint public _contractValue;
  uint public _amount;
  address public _address;
  function getAmount() public view returns (uint) {
    return _amount;
  }
  constructor(uint amt2) {
    _address = msg.sender;
    _amount = amt2;
  }
  function ChangeArray(uint arr) public {
    _array[(_contractValue)]=arr+2;
	}
}
