pragma solidity ^0.8.0;
contract Example24 {
  uint256 public static value;
  receive() external payable {
    value = 0;
  }
}
