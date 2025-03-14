pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
  uint8 constant x = 1;
  uint8 constant y = 0;
  uint32 constant zero = 0;
  function foo() public pure {
    assembly {
      mstore(x, mload(y))
      if { gt(x, 0) } { return }
      if { lt(x, 0) } { x := 0 }
    }
  }
}
