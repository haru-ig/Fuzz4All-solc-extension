pragma solidity ^0.8.0;
library MyLibrary {
  uint SOME_CONST = 8;
  uint SOME_CONST2 = 8;
  uint SOME_CONST3 = 8;
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
  uint public constant SOME_CONST = 1;
  uint public constant SOME_CONST2 = 1;
  uint public constant SOME_CONST3 = 1;
  function setNewValue(uint somethingValue) public {
    value = someValue;
  }
  function retrieveNewValue() public view returns(uint) {
    return value;
  }
}
