pragma solidity ^0.8.0;
contract MutatingFallback3 {
  function modify(uint num1, uint num2) public {
    require(num1 == 123, "modify() called");
  }
}
contract CreateAddress3 {
  function createAddress() public pure { }
}
