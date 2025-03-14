pragma solidity ^0.8.0;
contract EquivalentCounter {
   uint internal x;
   uint internal y;
   constructor() { this.setX(); }
   function setX() internal {
       x -= 1;
   }
   function setY() internal {
       unchecked {
          y -= 1;
       }
   }
}
