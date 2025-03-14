pragma solidity ^0.8.0;
contract MyContract {
  uint public value;
  function setNewValue(uint somethingValue) public {
    value += somethingValue;
  }
  function retrieveNewValue() public view returns(uint) {
    return value;
  }
}
contract MySafe {
  uint private mySafeConstant;
  function new() public {
    mySafeConstant++;
  }
  function getConstant() public view returns(uint) {
    return mySafeConstant * 2;
  }
}
contract MySafe {
  uint public constant mySafeConstant = 8;
  function new() public {
    mySafeConstant++;
  }
  function getConstant() public view returns(uint) {
    return mySafeConstant * 2;
  }
}
contract MyUnsafe {
  uint public constant mySafeConstant = 8;
  function new() public {
    mySafeConstant++;
  }
  function getConstant() public view returns(uint) {
    return mySafeConstant * 2;
  }
}
contract MyUsingUnsafe {
  uint public value;
  function setNewValue(uint somethingValue) public {

    value = somethingValue + "Hello World";
  }
  function retrieveNewValue() public view returns(uint) {
    return value;
  }
}
contract MyUsingUnsafe {
  uint public constant value = "Hello World";
  function setNewValue(uint somethingValue) public {
    value = somethingValue + "Hello World";
  }
  function retrieveNewValue() public view returns(uint) {
    return value;
  }
}
contract MyUsingInlineAssembly {
    assembly {

      'value := 99900010001000200030004' using assembly {
          /* The following code should
