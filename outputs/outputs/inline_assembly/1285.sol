pragma solidity ^0.8.0;
contract Mutant3a
{
  constructor() public {
      uint b = 42;

      assert(address(this).balance < b);
  }
  receive() external payable {}
}
