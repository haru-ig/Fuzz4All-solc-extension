pragma solidity ^0.8.0;
 contract MutatedYulContract4 {
    uint internal contractCounter;
    uint constant c = 0x00;
    function multiply(uint z) private returns (uint) {
      uint x;
      if ((z > 1) || (z % c!= 0)) {
        x =  20;
      } else {
        x =  z * c;
      }
      return x >= 2 + c? x : x + c;
    }
}
