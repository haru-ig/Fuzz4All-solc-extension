pragma solidity ^0.8.0;
contract M {
  uint constant value = 5;
  uint  counter;

  constructor(){
    counter = value;
  }
  fallback() external payable {
   counter += value;
    counter -= 0;
    counter += counter;
  }
}
