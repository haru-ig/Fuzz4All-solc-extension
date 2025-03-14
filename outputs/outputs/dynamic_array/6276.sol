pragma solidity ^0.8.0;
library l {
  struct s {
    uint a;
    uint b;
  }
  function get() public pure returns (s memory) {
    s memory b;
    b.a = 47;
    b.b = 47;
    return a;
  }
}
contract {
  function f() public pure {
    s memory b;
    b = abi.encodePacked(s(10, 1));
    require(b.a == 10 && b.b == 1);
  }
}
