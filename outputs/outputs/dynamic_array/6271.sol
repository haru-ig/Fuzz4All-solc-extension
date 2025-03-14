pragma solidity ^0.8.0;

library l {
  struct s {
    uint a;
    uint b;
  }
  function get() public pure returns (s memory) {
    s memory a;
    a.a = 1;
    a.b = 2;
    return a;
  }
}
