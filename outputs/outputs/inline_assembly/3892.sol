pragma solidity ^0.8.0;
contract SemanticallyEquivalent19 {
  function foo() public pure {
    revert(0)
  }
  function bar() public pure {
    revert(uint256(-1))
  }
}
