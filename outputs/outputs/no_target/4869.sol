pragma solidity ^0.8.0;
contract C { function f() public pure { bytes32 b = 0xffffffff; b = b >> 32; } }
contract A {
  function f() public pure { require(0xffffffff > 0x7fffffff); }
}
