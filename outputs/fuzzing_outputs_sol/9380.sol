pragma solidity ^0.8.0;
contract MutatingFallback {
  function mutate(uint num1) public pure {
    if (false) {
      num1 = 365 * 3;
    }
  }
}
