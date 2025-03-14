pragma solidity ^0.8.0;
contract MutatedContract {
  uint public value = 8;
  function getMutatedContract() public view returns(uint) {
    return value + 123;
  }
  function updateValue(uint somethingValue) public {
    value = value + somethingValue;
  }
 }
