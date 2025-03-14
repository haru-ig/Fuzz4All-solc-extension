pragma solidity ^0.8.0;
contract SemanticallyEquivalent20y {
  uint8 constant x = 1;
  uint8 constant y = 0;
  function foo() public pure {
    assembly
    {
      sstore(y, sload(x))
      y := mstore(y, x)
      mstore(x, 0)
      mstore(y, sload(x))
    }
  }
}
