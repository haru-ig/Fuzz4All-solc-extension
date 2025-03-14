pragma solidity ^0.8.0;
contract Mixin1 is Mixin2
{
   function set(uint256 dataLength) public pure returns (uint256)
   {
      return dataLength;
   }
}
