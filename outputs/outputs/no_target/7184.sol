pragma solidity ^0.8.0;
contract MutatedCounter {
   uint internal x;
   uint internal y;
   function setY() internal {
      unchecked {
          y--;
      }
   }
   function setX() public {
       x--;
   }
}
