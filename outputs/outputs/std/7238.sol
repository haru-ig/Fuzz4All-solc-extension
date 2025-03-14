pragma solidity ^0.8.0;
contract Array {
  uint8[1] x;
  uint8 minArray = x[0];
  function test(uint a) public pure {
    minArray = x[0];
    minArray = (minArray | (a & 0xFFFF0000) >> 16);
    minArray = (minArray | (a & 0xFF00) >> 8);
    minArray = (minArray & 0xFF);
  }
  function test2(uint a, uint b) public pure {
    uint8[] storage a = x;
    uint8 c;

    c = a.length % 10;
    a.push(a.length);
    a.push(a.length + 128);
    a[a.length] = a.length;
    c = a[a.length] - a.push(a.length);
  }
}
