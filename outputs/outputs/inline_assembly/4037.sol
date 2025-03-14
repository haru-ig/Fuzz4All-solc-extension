pragma solidity ^0.8.0;
contract SemanticsEquivalence24x {
  uint8 constant x = 1;
  function bar() public pure {
    asm
    {
      sstore mstore(x, sload mload())
    }
  }
}
