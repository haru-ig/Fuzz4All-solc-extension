pragma solidity ^0.8.0;
contract MutatingFallback4 {
  function mutate(uint num1) public pure {
    num1 = 365 * 3;
    assert(num1 >= 365 * 3);
  }
}
