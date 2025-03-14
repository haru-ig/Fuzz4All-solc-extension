pragma solidity ^0.8.0;
contract SemanticallyEquivalent1025 {
  uint8 constant x = 0;
  uint8 constant y = 0;
  function foo(uint8 y, uint8 x) public pure {
    assembly {
      let z = x > 0x7f
    ? 128
      : and(x, 127)
    }
    revert('x', z);
  }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent1026 {
  uint8 constant x = 0;
  uint8 constant y = 0;
  function foo(uint8 y, uint8 x) public pure {
    assembly {
      x := 0
      drop(2)
    }
  }
}
