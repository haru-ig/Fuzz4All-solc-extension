pragma solidity ^0.8.0;
contract D {
   uint [] x;
   uint[3] y;
   function init() public {
      x = x + [1];
      x[3] = 7;
   }
}
