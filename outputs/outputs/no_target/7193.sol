pragma solidity ^0.8.0;
contract MutatedCounter {
   uint internal x;
   uint internal y;
   function setY() internal {
    unchecked {
      x--;
       if (y==0) {
        unchecked {
               y--;
               x--;
              }
              }
    }
   }
   function setX() public {
       y++;
   }
}
