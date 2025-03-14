pragma solidity ^0.8.0;
contract EquivalentModul2{
   uint x;
   uint z;
   uint y;
   uint z_;
   constructor(uint _z_) public{
      z = _z_;
   }
   function Add(uint _y_)public{
      if(_y_!= 5){
         x = x + 1;
         if(_y > 5){
            _y = (y +1)/2;
         }
      }
   }
   function addY2() public{
       y = y + 1;
   }
}
