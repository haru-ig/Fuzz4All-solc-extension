pragma solidity ^0.8.0;
contract Caller
{
   function sendEtherNoCatch() public payable{}
   function sendEtherNoCatch(uint x) public payable
   {
      if (x == 0) { throw; }
   }
}
