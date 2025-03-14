pragma solidity ^0.8.0;
contract SemanticsEquivalence24x {
  function bar() public pure {
    x += 2;
  }
  uint8 constant x = 1;
}
