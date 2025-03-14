pragma solidity ^0.8.0;
contract Caller
{
   function sendEther(uint y) public {
       sendEther(1);
   }
   function sendEther() private payable {}
}
