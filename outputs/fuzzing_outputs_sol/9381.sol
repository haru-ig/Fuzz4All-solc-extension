pragma solidity ^0.8.0;
contract MutatingFallback5 {
  uint public num1;

  constructor(uint x) { num1 = x; }

  function mutate(uint num2) public pure {
    require(num2 <= num1);
    uint result = num1 + num2;
    num1 = result;
    assert(result == num1 + num2);
  }
}
