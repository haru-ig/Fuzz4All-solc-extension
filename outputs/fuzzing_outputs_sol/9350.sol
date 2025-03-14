pragma solidity ^0.8.0;
contract MutatingFallback3 {
  function modify(uint num1, uint num2) public {
    require(num1 + num2 <= 40, "modify() called");
  }
  function getPayableFallback() public pure returns (uint) {
    return 1234;
  }
}
