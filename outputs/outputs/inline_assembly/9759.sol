pragma solidity ^0.8.0;
contract MutatedYulContract4 {
    uint internal contractCounter;
    uint constant c = 0x00;
    function divideZero(uint x) public {
    if (x == 0) {
       if (contractCounter == 0) {
        uint a = x / 0;
       } else {
       uint a = x / 1;
       }
    }
   return;
  }
}
contract MutatedYulContract5 {
    uint internal contractCounter;
    uint constant c = 0x00;
    function multiplyZero(uint z) public {
      if (z == 2) {
      if (contractCounter == 0) {
      } else {
      }
    }
  uint x;
      if (z == 2) {
        x =  20;
      } else {
        x =  z * c;
      }
       return;
    }
}
