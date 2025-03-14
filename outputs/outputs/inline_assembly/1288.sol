pragma solidity ^0.8.0;
contract Mutant4
{
   bool public b;
   address[] public a;
   constructor() public {
      uint a = 42;
      b = address(this).balance < 42;
      a.push(address(this));
  }
  receive() external payable {}
}
