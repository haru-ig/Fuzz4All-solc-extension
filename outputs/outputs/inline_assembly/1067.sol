pragma solidity ^0.8.0;
contract MutatedContract {
  uint public value = 8;
  function setNewValue(uint somethingValue) public {
    if (somethingValue > value) {
      value = value + 123;
    }
  }
  function retrieveNewValue() public view returns(uint) {
    return value;
  }
}
