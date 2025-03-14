pragma solidity ^0.8.0;
contract MutatedYulConstantContract {
    uint constant public constant c = 0x10;
    function multiply(uint z) public returns (uint) {
    uint x;
      if (z == 1) {
        x =  c;
      } else {
        x =  10;
      }
      return x >= 1 + c? x : x + c;
    }
}
