pragma solidity ^0.8.0;
contract Caller
{
   address payable public payRef;
   fallback() public payable {}
   receive() external payable {
      payRef = msg.sender;
   }
   function() external payable {
      payRef = msg.sender;
   }
}
