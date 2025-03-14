pragma solidity ^0.8.0;
contract E6G {
  uint8 x;
  x = 23;
  uint16 f(uint16 x) public pure {
      uint16 sum = 0;
      for (uint16 i = 0 ; i < 32; i++) {
        sum += x >> i & 1;
      }
      if (sum!= 1)
        throw ;
  }
}
