pragma solidity ^0.8.0;
contract MutatedCounter {
   uint internal x;
   uint internal y;
   function setY() internal {
       y--;
   }
   function setX() external {
       x--;
   }
}
