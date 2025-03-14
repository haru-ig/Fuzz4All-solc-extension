pragma solidity ^0.8.0;
contract Mutant2
{
   uint[] public c;
   constructor() public {
      c = new uint[](10);
  }
  receive() external payable {}
}
