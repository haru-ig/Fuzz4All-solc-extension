pragma solidity ^0.8.0;
contract Caller {
   address payable from;

   function sendEther () public {
       if (msg.value > 0) {
           from.send(msg.value);
       }
   }
}
