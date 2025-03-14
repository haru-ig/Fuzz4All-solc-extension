pragma solidity ^0.8.0;
contract modifiedB2 {
  function f(uint8 a, uint8 b) public returns (uint8) {
    b &= 3;
    uint8 r;
    if (b>0) {
      r=a-(uint16)1+0x8000000000000000000000000000000;
    } else { r=a+(uint15)1; }
    return r;
  }
}
