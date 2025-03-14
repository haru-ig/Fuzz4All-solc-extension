pragma solidity ^0.8.0;
contract SemanticallyEquivalent32 {
  uint8 constant x = 0;
  uint8 constant y = 0;
  function foo(uint8 x, uint8 y) public pure {
    assembly { mstore8(0x0, _0) }
    assembly { mstore8(0x8, _2) mstore8(0x10, _3) calldatacopy(0x8, _2, 1) mstore8(0x18, x) mstore8(0x20, y)  return(mload8(0x20)) }
    assembly { revert(0, 0) }
  }
}
