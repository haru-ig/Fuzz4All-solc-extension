pragma solidity ^0.8.0;
contract MutatedYulContract2 is MutatedYulContract3 {
    uint internal contractCounter;
    uint constant c = 0x00;
    function multiply(uint z) public returns (uint) {
    uint x;
      if (z == '2') {
        x =  20;
      } else {
        x =  z * c;
      }
      return x >= 2 + c? x : x + c;
    }
}

pragma solidity ^0.8.0;
contract MutatedYulContract1 is MutatedYulContract2 {
    uint internal contractCounter;
    uint constant c = 0x00;
    function multiply(uint z) public returns (uint) {
    uint x;
      if (z == 2) {
        x =  20;
      } else {
        x =  z * c;
      }
      return x >= 2 + c? x : x + c;
    }
}
