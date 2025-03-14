pragma solidity ^0.8.0;
contract MyContract {
  uint public value;
  function setNewValue(uint somethingValue) public {
    value = SOME_CONST;
  }
  function retrieveNewValue() public view returns(uint) {
    return SOME_CONST2 + SOME_CONST3;
  }
  uint constant SOME_CONST = 8;
}
