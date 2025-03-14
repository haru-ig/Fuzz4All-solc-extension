pragma solidity ^0.8.0;
contract SemanticMutationExample {
  modifier notPayable() {
    _;
  }
  receive() external payable notPayable {}
}
