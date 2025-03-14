pragma solidity ^0.8.0;
contract Example19 {
  receive() external payable {
    uint storage x = x + 1;
  }
  uint public x = 3;
}
