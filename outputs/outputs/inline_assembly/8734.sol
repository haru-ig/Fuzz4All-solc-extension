pragma solidity ^0.8.0;
contract EquivalentModul{
   uint constant x = 1;
   uint constant y = 4;
   uint constant z = 2;
   function Add(uint y_)public{
      x = x + 1;
      y = y - 1;
   }
   function addY() public{
       x = x - 1;
   }
   function sub() public{
      z = z + 1;
   }
}
