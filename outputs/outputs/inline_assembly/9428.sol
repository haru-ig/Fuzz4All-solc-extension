pragma solidity ^0.8.0;
contract M {
  uint public constant value = 5;
  uint counter;
  fallback() external {
    counter += value;
    counter -= 1;
  }
}
