pragma solidity ^0.8.0;
contract Semantics_inline3 is Semantics_inline2 {
  function add(uint a, uint b) public pure returns (uint) {
    uint c = a + b;
    if(c > constant1) {
      uint d = 10 * b;
      if(d > constant2) {
        uint e = d * 10 / 1024 + d * 5 / 1024;
        if(e > constant3) {
          uint f = e / 1000;
          uint g = uint2int(e / 1000);
          uint h = uint2int(41 / 100);
          uint i = uint2int(41 / 12);
          return f;
        }
      }
    }
    return c;
  }
}
