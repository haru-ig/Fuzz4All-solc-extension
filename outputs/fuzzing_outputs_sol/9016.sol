pragma solidity ^0.8.0;
contract Mutator {
  receive() external payable {
    uint v = 1;
    v *= v;
  }
}
