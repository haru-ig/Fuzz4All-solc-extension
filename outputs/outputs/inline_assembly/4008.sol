pragma solidity ^0.8.0;
contract SemanticallyEquivalent20y {
  uint8 constant x = 1;
  uint8 constant y = 0;
  function foo() public pure {
    assembly {
      let mem = 0
      mem = mload(x)
      mstore(x, mem)
    }
  }
}
