pragma solidity ^0.8.0;
contract EquivalentModul{
   struct State {
       uint x;
       uint y;
   }
   constructor(uint z) public{
       x = 1;
       y = 0;
   }
   function addPoint(uint y_) public{
       y = y + y_;
   }
   function subtractPoint_(uint y_) public{
      x = x - 1;
      y = y - y_;
   }
}
