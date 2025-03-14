pragma solidity ^0.8.0;
contract M {
  uint counter;
  uint public constant value = 5;
  constructor() {
    counter += value;
    counter -= 1;
  }
  fallback() external {
    counter += value;
    counter -= 1;
  }
}
