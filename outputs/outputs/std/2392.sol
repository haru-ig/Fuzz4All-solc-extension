pragma solidity ^0.8.0;
contract MutatedEquivalent3
{
   uint256 a;
   function setA(uint256 b) public
   {
      a = b;
   }
   function addTwoInts() public returns(uint256)
   {
      return a + 2;
   }
}
