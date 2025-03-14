pragma solidity ^0.8.0;
contract M {
  int counter;
  fallback() external {
    counter -= 1;
    unchecked {
      counter += 1;
    }
  }
}
