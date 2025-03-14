pragma solidity ^0.8.0;
contract MutatedContract {
  struct Struct {
    uint public somethingValue;
  }
  uint public value = 8;
  function setNewValue(Struct memory somethingStruct) public {
    value = somethingStruct.somethingValue + 123;
  }
  function retrieveNewValue() public view returns(uint) {
    return value;
  }
}
