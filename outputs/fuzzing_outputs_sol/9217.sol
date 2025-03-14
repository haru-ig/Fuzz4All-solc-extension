pragma solidity ^0.8.0;
interface Base {
  fallback() external payable {}
}

contract Derived is Base {
  constructor() Base() {
  }
}
