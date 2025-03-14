pragma solidity ^0.8.0;
contract Mutation
{
   fallback(uint x, uint y, address addr) public returns(uint)
   {
       return modify(x, y);
   }

   function modify(uint x, uint y) public view returns(uint)
   {
       modifiedSendEther(x, addr);
       return y;
   }
}
