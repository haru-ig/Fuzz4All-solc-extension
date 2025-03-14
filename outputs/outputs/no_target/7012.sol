pragma solidity ^0.8.0;
contract Test {
    uint256 public immutable _maxuint = (2 ** 16 - 1);
    function f() public returns (uint256) {
        return _maxuint - 100;
    }
}
```
