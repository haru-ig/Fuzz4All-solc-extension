pragma solidity ^0.8.0;
contract P3 {
  uint32 public p3;
  function h(uint256 x) internal returns (uint) {



    return uint160(p3);
  }
}

library {
  uint32 public p3;
  function h(uint x) internal returns (uint) { return uint160(p3); }
}

contract P2 {
  using library { uint32 public p3; } func(uint x) internal returns (uint) { return p3.h(x); }
}

contract P2Lib{
  using library { uint32 public p3; } func(uint256 x) internal returns (uint) { return p3.h(x); }
}
