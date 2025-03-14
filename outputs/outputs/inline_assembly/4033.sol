pragma solidity ^0.8.0;
contract SemanticsEquivalence24x {
  uint8 constant x = 1;
  function bar() public pure {
    assembly { mstore(add(x, 1), mload(sub(x, 1))) }
  }
}
