pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Mutant
{
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
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Mutant
{
  address public x;
  uint256 public x1;
  uint256 public x2;
  constructor() {
    x = msg.sender;
    x2 = 2;
    x1 = 1;
  }
  receive() external payable {}
}
