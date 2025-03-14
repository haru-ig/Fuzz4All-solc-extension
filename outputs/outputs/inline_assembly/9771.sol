pragma solidity ^0.8.0;
contract MutatedYulContract10{
    uint internal contractCounter;
    uint constant c = 0x00;
    function divideByTwo(uint z) public {
    if (z == 2) {
    if (z > 0) {
      z /= 2;
    }
    else {
      z = z + 1;
    }
  } else {
      z=z/2;
    }
    return;
}
