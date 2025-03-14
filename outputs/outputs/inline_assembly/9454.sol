pragma solidity ^0.8.0;
contract M {
  uint Constant value = 5;
  uint  counter;
  fallback() external payable {
    counter += value;
    counter -= value;
    counter += value;
  }
}
