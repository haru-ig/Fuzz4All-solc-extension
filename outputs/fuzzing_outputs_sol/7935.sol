pragma solidity ^0.8.0;
contract Caller
{
   function sendEther(uint x) public payable{
      Equivalent(address(this)).sendEther(x);
      uint x2 = 1 ether;
   }
}
