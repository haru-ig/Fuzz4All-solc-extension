pragma solidity ^0.8.0;
contract SemanticallyEquivalent08 is SemanticallyEquivalent07 {
  uint8 constant x = 1;
  uint8 constant y = 0;
  function foo(uint8 y, uint8 x) public pure {
    assembly {
      let b = sub(x, sub(y, x))
      let c = b < 0? 0 : b
      b < 0? mstore(0, add(c, 127)) : mstore(0, sub(c, 128))
    }
  }
}
