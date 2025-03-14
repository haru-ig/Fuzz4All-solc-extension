pragma solidity ^0.8.0;
library MyLibrary {
  uint constant SOME_CONST = 8;
  uint constant SOME_CONST2 = 8;
  uint constant SOME_CONST3 = 8;
  function getSomeConst() public pure returns(uint) {
    return SOME_CONST;
  }
  function getSomeConst2() public pure returns(uint) {
    return SOME_CONST2;
  }
  function getSomeConst3() public pure returns(uint) {
    return SOME_CONST3;
  }
}
contract MyContract {
  uint public value;
  function setNewValue(uint somethingValue) public {
    value = somethingValue;
  }
  function retrieveNewValue() public view returns(uint) {
    return value;
  }
}
