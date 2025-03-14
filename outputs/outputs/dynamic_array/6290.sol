pragma solidity ^0.8.0;
library l {
  struct s {
    uint a;
    uint b;
  }
  function g() public pure returns (uint) {
    return h(1, "this also changed");
  }
  function h(uint a, uint b) public pure returns (uint) {}
}

```<issue_closed>
