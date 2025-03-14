pragma solidity ^0.8.0;
contract M {
  uint constant public value = 5;
  uint counter1;
  uint counter2;
  fallback() external {
    counter2 = counter1 + value;
    counter2 -= value;
  }
}
