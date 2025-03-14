pragma solidity ^0.8.0;
contract SemanticallyEquivalent18 {
  function foo() public pure {
    assembly { revert(0, 0) }
  }

  function bar() public pure {
    assembly { revert(0, add(65, 0)) }
  }
}
