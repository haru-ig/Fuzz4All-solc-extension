pragma solidity ^0.8.0;
contract NoFallback2
{
   function sendEther(uint x) public payable{}
}

pragma solidity ^0.8.0;
contract Fallback
{
   function callContract() public {

     Equivalent(address(new callContract())).sendEther(1 ether);
   }
}
