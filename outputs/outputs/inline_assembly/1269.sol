pragma solidity ^0.8.0;
contract Mutant
{
  address public x;
  uint256 public x1;
  uint256 public x2;
  constructor() public {
    assembly {
      mstore(0x40, x)
      mstore(0x48, x1)
      mstore(0x50, x2)
      return(add(mload(0x40), 0x48))
    }
  }
  receive() external payable {}
}
