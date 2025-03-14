pragma solidity ^0.8.0;
contract Mutant
{
  address public x;
  uint256 public x1;
  uint256 public x2;
  constructor() public {
    x = msg.sender;
    x1 = 1;
    x2 = 2;
  }
  receive() external payable {}
  receive() public {
    (2,2) = (x1 * x2,x+x1+x2);
  }
}
