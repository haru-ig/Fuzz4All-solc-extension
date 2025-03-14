pragma solidity ^0.8.0;
contract P4{
  uint32 public p4;
  function h() view returns (uint) { return uint256(p4); }
}

contract P3P4{
  P3 public p3;
  P4 public p4;
  function g(uint x, uint y) internal returns (uint) {
    uint z = x + y;
    return h(z) + uint(y < 0x80000000000000000000000000000000000000000 || uint(uint160(z) == 0xffffffffffffffffffff)) + uint(x < 0x80000000000000000000000000000000000000);
  }
  function h(uint v) internal returns (uint) {
      return v < 0x800000000000000000000000000000000000000? (v < 0x7fffffff? 2**127 : 0xFFFFFFFFFFFFFFFF) : v - (v < 0x8000000000000000000000000000000000000000? 0x1000000000000000000000000000000000000000000000000000000000 : 0x7FFFFFFF);
  }
}
