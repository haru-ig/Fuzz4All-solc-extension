pragma solidity ^0.8.0;
contract FallbackImpl {
  receive() external payable {}
  receive() external payable {
    (uint amount) = msg.data;
    (,) = msg.data;
  }
}
