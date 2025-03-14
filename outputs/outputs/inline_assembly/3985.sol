pragma solidity ^0.8.0;
contract SemanticallyEquivalent08x {
  uint8 constant x = 127;
  uint8 constant y = 1;
  function foo(uint8 x, uint8 y) public pure {
    assembly { mstore(0, sub(x, 128))}
  }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent08x {
  uint8 constant x = 8;
  uint8 constant y = 7;
  function foo(uint8 x, uint8 y) public pure {
    assembly { mstore(0, sub(y, sub(x, 32))) }
  }
}
