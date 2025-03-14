pragma solidity ^0.8.0;
contract MutatedYulContract6 {
    uint internal contractCounter;
    uint constant c = 0x00;
    function multiplyToTwo(uint z) public {
      if (z == 2) {
      } else {
      z=2 * c;
      }
       return;
    }
}
contract MutatedYulContract7{
    uint internal contractCounter;
    uint constant c = 0x00;
    function divideByTwo(uint z) public {
      if (z == 2) {
      } else {
      z/= 2;
      }
       return;
    }
}
contract MutatedYulContract8{
    uint internal contractCounter;
    uint constant c = 0x00;


    function divideByTwo(uint z) public {
      if (z == 2) {
        uint a = 2 / 1;
      }
    }
}
