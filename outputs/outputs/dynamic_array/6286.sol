pragma solidity ^0.8.0;
library l {
  event s(uint a, uint b);
  struct s {
    uint a;
    uint b;
  }
  function get() public returns (s memory) {
    s memory r;
    emit s(a, a);
    return r;
  }
  function f(uint a, string memory b) public pure returns (s memory) {
    s memory r;
    emit s(a, a);
    return r;
  }
}
contract c {
  s memory s_;
  emit s(s_.a, s_.b);
  constructor() public {
    s_.a = 2;
  }
}
