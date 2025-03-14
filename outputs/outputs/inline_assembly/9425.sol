pragma solidity ^0.8.0;
contract M {
  uint counter;
  fallback() public {
    unchecked {
      counter += 1;
    }
    counter -= 1;
  }
}
