pragma solidity ^0.8.0;
contract SemanticallyEquivalent17 {
  uint public i;
  function bar() public pure {
    i = 5;
    assembly {
      i := add(1, i)
    }
  }
}
