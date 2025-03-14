pragma solidity ^0.8.0;
contract Mutant3b
{
  constructor() public {
      uint b = 455;
      uint c = 42;
      assert(address(this).balance < c);
      assert(address(this).balance == b);
      assert(address(this).balance < b);
      assert(address(this).balance == b);
  }
  receive() external payable {}
}
