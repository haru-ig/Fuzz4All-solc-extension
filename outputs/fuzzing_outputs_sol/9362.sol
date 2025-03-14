pragma solidity ^0.8.0;
contract MutatingFallback4 {
  function modify(uint num1, uint num2) external {
    require(num1 == 123, "modify() called");
  }
}
contract CreateAddress4 {
  function createAddress() public pure { }
}
