pragma solidity ^0.8.0;
contract newY {
    uint256 public x;
    uint256 public constant y = 777;
    function f() public returns (uint256) {
      return x;
    }
    function func() public {
      uint256 z;
      while (x == 123) {
        x += y;
        z = x - y;
        x--;
      }
    }
}
```
