pragma solidity ^0.8.0;
contract EquivalentModul{
  uint x;
  uint y;
  uint z;
  constructor(uint z_) public{
      z = z_;
  }
  function Add(uint _y) public {
    if(_y!= 5){
      x = x + 1;
      if(y > 5){
           y = y + 1;
      }
    }
 }
 function addY() public{
   y = y + 1;
 }
 function sub() public{
   z = z - 1;
   if(z == 0){
      x = x - 1;
   }
 }
}
