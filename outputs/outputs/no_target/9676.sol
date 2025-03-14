pragma solidity ^0.8.0;
contract Counter { function Counter() internal { totalCount = 0; } uint256 private counter; function increment() internal { counter += 1; totalCount += 1; } uint256 public totalCount; }

pragma solidity ^0.8.0;
contract Counter_Check { function Counter_Check() internal { totalCount = 0; } uint256 public totalCount; uint256 private counter; function increment() internal { require(true, "Increment function should be called with the true value: True"); counter += 1; totalCount += 1; } }
