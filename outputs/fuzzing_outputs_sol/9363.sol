pragma solidity ^0.8.0;
contract MutatingFallback5 {
  function modify(uint num1, uint num2, uint num3) external {
    require(num1 == 123, "modify() called");
  }
}
