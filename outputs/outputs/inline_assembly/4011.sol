pragma solidity ^0.8.0;
contract SemanticallyEquivalent20y {
  uint8 constant x = 1;
  uint8 constant y = 0;
  assembly { x := 56 }
  function foo() public pure {mstore(y, 0)}
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent20y {
  uint8 constant x = 1;
  uint8 constant y = 0;
  uint8 constant z = 2;
  assembly { mstore(x, y) }
  function foo() public pure {
    assembly { x := z, mstore(y, 1) }
  }
}
