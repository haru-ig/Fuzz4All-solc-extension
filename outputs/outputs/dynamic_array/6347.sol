pragma solidity ^0.8.0;
library l {
  struct s {
    uint8 x;
  }
  function g() public pure returns (s storage) { return s(3); }
  function h() pure public returns (s memory) { return s(3); }
}
