pragma solidity ^0.8.0;
contract Mutator {
  receive(address payable _payment) external payable {
    require(_payment == payable(address(this)));
  }
}
