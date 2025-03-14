pragma solidity ^0.8.0;
contract MutatedCounter2 {
   uint internal x;
   function setX() internal {
    unchecked {
      if (x == 0) {
        x--;
      }
    }
   }
   function y() public {
    unchecked {
       x = 2;
       y = 0;
       uint8_t _0;
    }
   }
   function zero() public {
    unchecked {
       x = 0;
    }
   }
}
