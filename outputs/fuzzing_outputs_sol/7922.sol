pragma solidity ^0.8.0;
contract Caller
{
   function sendEther() private {
       address to = msg.sender;
       uint amount = msg.value;
       assembly {
           revert(0, to, amount)
       }
   }
}
