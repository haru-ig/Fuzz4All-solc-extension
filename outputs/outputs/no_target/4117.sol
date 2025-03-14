pragma solidity ^0.8.0;
contract P2 {
  uint256 internal constant p2_internal = 0x2a2ad00000000000;
  uint256 public p2;
  function h(uint x) internal returns (uint256) { return p2_internal; }
}
contract P1 {
  uint256 internal constant p1_internal = 0x2a2ad00000000000;
  uint256 public p1;
  function h(uint x) internal returns (uint256) { return p1_internal; }
}
contract P0 {
  uint256 internal constant p0_internal = 0x0000000000000000;
  uint256 public p0;
  function h(uint x) internal returns (uint256) { return p0_internal; }
}

address contracta;
contract B {
  function f() view public returns (uint) { return 115; }
}

contract X {
  uint public x;
  constructor(uint a) {
    x = a;
  }
  function f() view public returns (uint) { return x; }
}
contract D is B, X {
  function f() view public returns (uint) { return x * 41; }
}
/* Expected output:
0xa57ae1035e034c78387481e2c7d1e39e775b300e.sol:3:11: Warning: Function 'f' not found.

struct Y {
  Y(uint a, string b) public;
  uint32 c;
  string d;
}
contract Z is Y {
  (string, uint32) tuple;
  function f() view public returns (string memory, uint32) {
    return tuple;
  }
}
contract AA is Z {
  constructor(uint a) public { tuple = (string(uint(a)), uint32(a
