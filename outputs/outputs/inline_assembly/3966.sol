pragma solidity ^0.8.0;
contract SemanticallyEquivalent32 {
  uint8 constant x = 0;
  uint8 constant y = 0;
  function bar() public pure {
    assembly {






      mstore(
        add(1, x),
        mload(add(1, x))
      )
    }
  }
}
