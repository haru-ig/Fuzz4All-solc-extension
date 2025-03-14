pragma solidity ^0.8.0;
contract Mutation
{
  uint256 public count = 0;
  address public x;
  uint256 public x1;
  uint256 public x2;
  constructor() {
    x = msg.sender;
    x1 = 1;
    x2 = 2;
  }
  receive() external payable {}
}
modifier noRevert {
  if(reverting()) revert();
  _;
}
