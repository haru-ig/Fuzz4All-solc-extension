pragma solidity ^0.8.0;
contract MutatedYulContract6 {
    uint internal contractCounter;
    uint constant c = 0x00;
    function divideZero(uint x) public {
      if (x == 0) {
      uint a;
      if (contractCounter == 0) {
        a = x / 0;
      } else {
        a = x / 1;
      }
      }
   return;
    }
}
contract MutatedYulContract7 {
    uint internal contractCounter;
    uint constant c = 0x00;
    function multiplyZero(uint z) public {
      if (z == 2) {
      uint a;
      if (contractCounter == 0) {
      } else {
      }
      } else {
      uint x;
      if (z == 2) {
        x =  20;
      } else {
        x =  z * c;
      }
      }
       return;
    }
}
contract MutatedYulContract8 {
    uint internal contractCounter;
    uint constant c = 0x00;
    function divideZero(uint x) public {

      if (x == 0) {
      if (contractCounter == 0) {

      } else {
      }
      }
   return;
    }
}
contract MutatedYulContract9 {
    uint internal contractCounter;
    uint constant c = 0x00;
    function multiplyZero(uint z) public {
      if (z == 2) {

      } else {

      uint a;
      if (z == 2) {
        x =  20;
      } else {
        a = x * c;
      }
      }
       return;
    }
}
