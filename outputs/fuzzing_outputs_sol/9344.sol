pragma solidity ^0.8.0;
contract MutatingFallback1 {
  function modify(uint num1, uint num2) public {
    num1 = 123;
    num2 == 213;
    num2 = 213;
    num2 > 223;
  }
}
contract CreateAddress1 {
  function createAddress() public pure { }
}
