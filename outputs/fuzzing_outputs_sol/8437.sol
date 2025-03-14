pragma solidity ^0.8.0;
contract FallbackMutatorExample {
  int x;
  address payable contractA;
  constructor(address _contractA) public {
    contractA = _contractA;
    x += 1;
  }
  receive() external payable {
  }
}
