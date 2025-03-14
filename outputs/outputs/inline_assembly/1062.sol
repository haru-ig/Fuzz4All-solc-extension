pragma solidity ^0.8.0;
contract MyContract {
  uint public value = 8;
  function setNewValue(uint somethingValue) public {
    value = somethingValue;
  }
  function retrieveNewValue() public view returns(uint) {
    return value;
  }
}
