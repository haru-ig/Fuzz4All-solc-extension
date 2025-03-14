pragma solidity ^0.8.0;
contract CallerExample1 {
  uint256 num1;
  uint256 num2;
  constructor(uint256 num1, uint256 num2) {
    num1 = num1;
    num2 = num2;
  }
  receive() external payable {}
}
