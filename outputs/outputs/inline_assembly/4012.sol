pragma solidity ^0.8.0;
contract SemanticallyEquivalent20z {
  uint8 constant x = 1;
  uint8 constant y = 0;
  address constant admin = 0x1234567890;
  function foo() public pure {
    assembly { mstore(x, mload(y)) }
  }
}
