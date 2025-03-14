pragma solidity ^0.8.0;
contract M {
  uint public constant value = 5;
  uint counter = 5;
  fallback() external {
    counter -= 1;
    counter++;
  }
}
