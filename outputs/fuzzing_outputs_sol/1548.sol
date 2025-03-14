pragma solidity ^0.8.0;
contract MutatorExample {
  receive() external pure { revert(); }
}
