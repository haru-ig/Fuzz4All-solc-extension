pragma solidity ^0.8.0;
contract C {
  function getResult(uint x) public view returns (uint) {
    return (x - x % 10) * 10;
  }
}
```
