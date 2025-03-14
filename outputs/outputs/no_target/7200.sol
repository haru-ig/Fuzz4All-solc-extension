pragma solidity ^0.8.0;
contract MutatedCounter {
   uint internal x;
   uint internal y;
   function zero() public {
    unchecked {

      x = 2;
      setY();
    }
  }
   function setY() internal {
    unchecked {
      if (y == 0) {
        unchecked {
          x = x + 1;
        }
      }
      y--;
    }
  }
}
