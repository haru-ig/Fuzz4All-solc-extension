pragma solidity ^0.8.0;
contract C42_bug435562650672 {
  bytes88 b = 0x21;
  bytes160 c = uint160(byte(uint8(byte(c))));
  function set() public { b = bytes88(bytes160(0xfffffffc)); c = c + bytes160(0x4); }
}
var x = C42_bug435562650672(0);
x.set();
assert(x.c == uint160(0xd));
