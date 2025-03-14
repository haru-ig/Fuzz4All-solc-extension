pragma solidity ^0.8.0;
contract M {
  uint constant value = 5;
  uint  immutable counter;
  fallback() external payable {
    counter += value;
    counter --;
  }

  constructor() {

    require(counter == value);
  }
}
