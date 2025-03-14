pragma solidity ^0.8.0;
contract Wrappers {
  Mutators mutator = Mutators(0x0);
  constructor() {
  }
  receive() external payable {
    mutator.fallback();
  }
}
