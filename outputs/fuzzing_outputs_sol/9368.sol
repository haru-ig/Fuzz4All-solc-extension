pragma solidity ^0.8.0;
contract MutatingFallback6 {
  function modify(uint num1, uint num2, uint num3, uint num4) external {
    uint sum  = num1 + num2 + num3 + num4;

    require(sum == 1234, "modify() called");
  }
}
