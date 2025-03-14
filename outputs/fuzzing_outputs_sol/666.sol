pragma solidity ^0.8.0;
contract Mutator
{
   receive() external payable notOwner {
   }
   receive() public payable notOwner {
   }
}


pragma solidity ^0.8.0;

contract CallerReceivableFallbackReceiver
{

   receive() external payable {}
}
