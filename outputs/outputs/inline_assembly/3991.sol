pragma solidity ^0.8.0;
contract SemanticallyEquivalent09y {
  uint256 constant x = 1;
  uint256 constant y = 0;
  function foo() public pure {
    assembly { mstore(0, mul(sub(y, 0), sub(x, 128))) }
  }
}
