pragma solidity ^0.8.0;
library Mutator {
  receive() external returns (bool success) {
    return true;
  }
}
