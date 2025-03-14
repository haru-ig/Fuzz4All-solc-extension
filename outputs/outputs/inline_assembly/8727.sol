pragma solidity ^0.8.0;
contract EquivalentModul{
   uint x;
   uint y;
   uint z;
   constructor(uint z_) public{
      z = z_;
   }
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
