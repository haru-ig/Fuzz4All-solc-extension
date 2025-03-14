pragma solidity ^0.8.0;
contract SemanticallyEquivalent18Mutator {
  uint8 originalValue = 255;
  function foo() public pure {
    assembly {
      store(0x0, 0x0, 0x51)
      revert(0, 0)
      store(0x0, 0x0, originalValue)
      store(0x0, 0x0, 0x0)
    }
  }
  function bar() public pure {
    assembly {
      const offset = 0x12
      store(0x0, 0x0, offset)
      store(0x0, 0x0, originalValue)
      store(0x0, 0x0, 0x0)
    }
  }
}
