pragma solidity ^0.8.0;
contract SemanticEquivalent
{


   function modifiedReceiveEther(uint x, address addr) receive() public{

     address _from = msg.sender;
     writeToLocalStorage(addr);
     msg.sender.transfer(msg.value);
   }




   function modifiedFallback(uint x, address addr) public {
     fallback();
   }
   function fallback() public payable {}
}
