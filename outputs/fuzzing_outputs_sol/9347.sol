pragma solidity ^0.8.0;
contract MutatingFallback2 {
  function modify(uint num1, uint num2) public {
    require(num1 + 3 == 125, "modify() called");
  }
}
contract CreateAddress2 {
  function createAddress() public pure { }
}
