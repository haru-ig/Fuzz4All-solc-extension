pragma solidity ^0.8.0;
contract C40_bug4055460243 {
   event E;
  uint48 a;
  modifier M1(uint256 c) { if (c<2048) { _; } c = uint256(uint(uint8(c))); E; }
  constructor() { E; uint8 c; uint160 d; a = uint48(uint(uint8(a))); c = uint8(uint(uint8(a))); d = uint160(uint8(uint8(a))); }
   function f1() M1(uint8 b) public { E; uint8 c; uint160 d; c = uint8(uint(uint8(a))); d = uint160(uint8(uint8(c))); }
}
