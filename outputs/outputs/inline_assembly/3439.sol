pragma solidity ^0.8.0;
contract Immutable {
  uint public constant ZERO = 0;
  uint public value;
  constructor() public {}
  function get() public view returns (uint) {
     return value;
 }
}
```

## Replay
