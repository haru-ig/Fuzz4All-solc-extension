pragma solidity ^0.8.0;
contract MutatedCounter {
   uint internal x;
   uint internal y;
   function setY() internal {
    unchecked {
       if (y == 0) {
        y--;
      }
    }
   }
   function setX() public {
       x--;
   }
   function zero() public {
    unchecked {
       x = 2;
    }
   }
   function check() public pure {
       if (x == 0) {
       }
    if (x > 0) {
       unchecked {
        x--;
       }
    }
   }
}
