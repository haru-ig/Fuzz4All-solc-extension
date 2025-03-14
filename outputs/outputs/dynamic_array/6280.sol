pragma solidity ^0.8.0;
library l {
  struct s {
    uint a;
    uint b;
  }
  function get() public pure returns (s memory) {
    return f(1, "this is the message");
  }
  function f(uint a, string memory b) public pure returns (s memory) {}
}
