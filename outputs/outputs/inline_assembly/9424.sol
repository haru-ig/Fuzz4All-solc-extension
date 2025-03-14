pragma solidity ^0.8.0;
contract M {
  int counter;
  fallback() external {
    unchecked {
      counter -= 1;
      counter -= 1;
      counter += 1;
    }
  }
}
```
```solidity
pragma solidity 0.8.0;
contract M {
  int counter;
  fallback() external {
    counter += 1;
  }
}
```
