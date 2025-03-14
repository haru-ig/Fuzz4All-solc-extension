pragma solidity ^0.8.0;
contract SemanticallyEquivalent1024 {
  uint8 constant x = 1;
  uint8 constant y = 0;
  function foo(uint8 y, uint8 x) public pure {
    assembly { x := sub(x, sub(y, 128))}
  }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent1024 {
  uint8 constant x = 1;
  uint8 constant y = 0;
  function foo(uint8 y, uint8 x) public pure {
    revert("bar", sub(x, sub(y, 128)));
  }
}
```
