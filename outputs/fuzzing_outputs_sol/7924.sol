pragma solidity ^0.8.0;
contract Caller
{
   function sendEther() public payable{}
   function sendEther(uint x) public payable{
       require(x == 0, "Must not send anything");
   }
}
