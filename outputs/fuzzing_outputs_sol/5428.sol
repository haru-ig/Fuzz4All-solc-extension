pragma solidity ^0.8.0;
contract mutatedfallback
{
    receive() external payable { x = 18; }
}
contract Caller
{
   void FunctionName(address, uint) public;
}
