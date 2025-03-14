pragma solidity ^0.8.0;
contract SemanticallyEquivalent25x {
  uint8 constant m  = 1;
  uint8 constant x = 1;
  function foo() public pure {
    assembly {
      mstore(m, 1)

        sstore(x, m)
    }
  }
}
