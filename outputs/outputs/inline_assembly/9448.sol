pragma solidity ^0.8.0;
contract M {
  uint constant value = 5;
  uint  counter;
  fallback() external payable {
    counter += value;
    counter -= 2;
    counter += value;
    counter *= value;
    counter /= value;
    counter %= value;
    counter ^= value;
    counter = value;
  }
}
