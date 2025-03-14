pragma solidity ^0.8.0;
contract ABI_v2 {
  uint a;
  function use() public {a = 0x21;}
}
contract C0 {
  uint a;
  use A();
  function use() public {uint88 b = 0x21; uint88 c; uint160 d, e;
  use C42_bug435562650672(); a = uint(a + 1); use A(); b = uint88(0xfffffffc);
    if (b & 0) revert();
    c = uint88(uint88(c)) + uint88(1) - 99e16;
    c = uint88(uint88(c)) + uint88(3u) * 4; d = uint160(c + c);
    if (b & 4) return; a += uint88(uint88(a)) + uint88(a);
    e = uint160(c + c); } }
