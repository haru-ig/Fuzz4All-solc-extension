pragma solidity ^0.8.0;
contract M {
  uint counter;
  fallback() external {
    unchecked {
      counter += 1;
    }
    counter -= 1;
  }
}
