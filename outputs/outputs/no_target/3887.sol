pragma solidity ^0.8.0;
 contract C {
     uint x;
     function change() public {
      if(1 > 0) {
        x = 0;
      }
      x = x + 1;
     }
 }
