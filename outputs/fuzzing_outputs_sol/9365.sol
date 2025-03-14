pragma solidity ^0.8.0;
contract MutatingFallback6 {
  function modify(uint num1, uint num2, uint num3) payable external {
    require(num1 == 123, "modify() called");
  }
}
