pragma solidity ^0.8.0;
contract SemanticallyEquivalent40x {
  uint8 constant x;
  constructor() public { x = 1; }
  function foo() public pure {
    assembly { mstore(add(x, 1), mload(x)) }
  }
}
