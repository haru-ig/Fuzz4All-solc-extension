pragma solidity ^0.8.0;
contract Caller {
   function fallback() public payable {
       require(msg.value >= value);
       msg.sender.transfer(value);
   }
}
