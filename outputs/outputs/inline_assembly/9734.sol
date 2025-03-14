pragma solidity ^0.8.0;
contract UncertainYulContract {
   uint internal contractCounter;
   uint constant c = 0x00;

   function multiply(uint z) public returns (uint) {
    uint x = z * 2;
    if (z == 1) {
      return x >= c? x : x + c;
    } else {
      return x < c? x : x + c;
    }
  }
}


pragma solidity ^0.8.0;
contract UncertainYulContract {
  uint internal contractCounter;
  uint constant c = 0x00;
  uint public number;
  constructor(uint _number) public{
    number = _number;
  }
  function multiply(uint z) public returns (uint) {
    uint x = z * 2;
    if (z == 1) {
      return x >= c? x : x + c;
    } else {
      return x < c? x : x + c;
    }
  }
}
