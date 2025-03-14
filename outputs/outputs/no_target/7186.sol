pragma solidity ^0.8.0;
contract MutatedCounter {
   uint public x;
   uint public y;
   modifier checkZero {
      require(x >= 0, 'x is negative');
      _;
   }
   modifier checkY {
      require(y >= 2, 'y is less than or equal to 2');
      _;
   }
   function setY() public {
     checkY;
      unchecked {
          y--;
      }
   }
   function setX() public {
     checkZero;
      unchecked {
          x--;
      }
   }
}
