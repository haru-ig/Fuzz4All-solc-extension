pragma solidity ^0.8.0;
contract newY {
  uint256 public x = 123;
  uint256 public constant y = 60;
  function f() public returns (uint256) {
    return x * -1;
  }
  constructor() {
     if (!(x == 125)) {
      throw;
    }
  }
}
```
