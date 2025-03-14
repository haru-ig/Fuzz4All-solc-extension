pragma solidity ^0.8.0;
contract C {
  uint public counter = 0;
  constructor() public {
    ++counter;
  }
  function checkCounter() public views returns (uint) {
    return counter;
  }
  function mutatedCounter() public returns (uint) {
    return ++counter;
  }
}
```
