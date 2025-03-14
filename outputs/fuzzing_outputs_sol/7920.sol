pragma solidity ^0.8.0;
contract Caller
{
   function sendEther1() public payable {}
   function sendEther2() private payable {}
   function sendEther3() public payable pure {}
}
