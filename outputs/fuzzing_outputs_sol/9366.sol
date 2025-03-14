pragma solidity ^0.8.0;
contract MutatingFallback6 {
  function modify(uint num1, uint num2, uint num3, uint num4, uint num5) external {
    require(num1 == uint(0), "modify() called");
  }
}
