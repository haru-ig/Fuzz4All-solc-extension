pragma solidity ^0.8.0;
contract MutatedCounter {
   uint internal x;
   uint internal y;
   function setY() public {
       x--;
   }
}
