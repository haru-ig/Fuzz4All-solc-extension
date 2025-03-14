pragma solidity ^0.8.0;
contract MutatedCounter {
   uint internal x;
   uint internal y;
   function setX() public {
       unchecked {
       x--;
   }
   }
   function setY() internal {
       unchecked {
       y--;
   }
   }
}
