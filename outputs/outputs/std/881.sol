pragma solidity ^0.8.0;
contract Mutate11To12
{
   event Log(uint[] data);
   function mutate11() public pure
      {
         emit Log([1,2,3,4,5,6]);
      }
   function mutate12() public pure
      {
         emit Log([7,8,9,10,11,12]);
      }
 }
