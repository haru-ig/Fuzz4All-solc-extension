pragma solidity ^0.8.0;
contract Caller
{
   function sendEther() private{
       address payable from = payable(msg.sender);
       if (msg.value > 0) {
           from.send(msg.value);
       }
   }
}
