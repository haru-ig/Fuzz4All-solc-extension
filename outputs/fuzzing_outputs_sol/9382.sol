pragma solidity ^0.8.0;
contract MutatingFallback5 {
  function mutate(uint num1) payable public {
    num1 = 365 * 3;
    assert(num1 >= 365 * 3);
  }
}
