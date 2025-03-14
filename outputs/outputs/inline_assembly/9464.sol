pragma solidity ^0.8.0;
contract M {
  uint constant value = 5;
  uint  public counter;
  fallback() external payable {
    counter += value;
    counter -= 0;
    counter += counter;
  }
}
