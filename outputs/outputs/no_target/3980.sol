pragma solidity ^0.8.0;
 contract C { uint256 public x; uint256 constant y = 5; function f(uint i) public { uint256 z = (i + (uint256)1).mod(y); } }

pragma solidity ^0.8.0;
 contract C { bool public b; uint256 public x; uint256 constant y = 5; function f() public { uint256 z = (x + (uint256)1).mod(y).mod(5); b = (z == x); if (b) { set(); } else { setx(); } } function setx() public { x = 1; } function set() public { y = 4; x = y.f(); b = false; require(x == 1); } function g() public view returns (uint256) { uint256 z = (x - (uint256)1).mod(-y, z); return z; } }
