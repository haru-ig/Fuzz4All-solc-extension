pragma solidity ^0.8.0;
contract MutatedYulContract6 {
    uint internal contractCounter;
    uint constant c = 0x00;
    function divideMultiplyZero1(uint x) public {
      if (x == 2) {
        if (contractCounter == 0) {
          uint a = x / 0;
        } else {
          uint a = x / 1;
        }
      }
      uint z = x / c;
    }
   function divideMultiplyOne(uint z) public {
     if (z == 1) {
      if (contractCounter == 0) {
      } else {
      }
    }
     uint x = z * c;
      return;
  }
}
contract MutatedYulContract8 {
    uint internal contractCounter;
    uint constant c = 0x00;
    function divideMultiplyZeroh(uint x) public {
      if (x == 6) {
      if (contractCounter == 0) {
      } else {
      }
    }
     uint z = x / 2;
      uint d = x / c;
      if (z == 1) {
        if (contractCounter == 0) {
        } else {
        }
      }
      x = 100 / 100;
      return;
  }
}
