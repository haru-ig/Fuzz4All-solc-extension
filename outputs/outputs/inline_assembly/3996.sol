pragma solidity ^0.8.0;
contract SemanticallyEquivalent19y {
  uint8 constant x = 1;
  uint8 constant y = 0;
  function foo() public pure {
    assembly { mstore(add(y, sub(x, 128)), x) }
    mstore(add(y, 4), add(y, x))
    asm("0(0) := mstore(add(y, 4), add(y, 128))")
  }
}
