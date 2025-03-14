pragma solidity ^0.8.0;
contract SemanticallyEquivalent08B is SemanticallyEquivalent08 {
  function foo(uint8 x, uint8 y) public pure {
    assembly {
      mstore(0, sub(add(x, 128), add(y, 128)))
    }
  }
}
