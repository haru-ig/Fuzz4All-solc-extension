pragma solidity ^0.8.0;
contract C41_bug422481729925 {
  uint88 b = 0x19;
  function set2() public { b = b ^ 1; uint88 c; uint160 d; c = uint88(uint(uint8(c))); d = uint160(uint8(uint8(c))); }
  function get() public view returns (uint88) { return b; }
}
contract C41_bug43148122348 {
  uint88 b = uint88(uint(uint8(b)));
  function test() public { uint88 c; uint88 d; uint88 e; c = uint88(uint(uint8(c))); d = uint88(uint(uint8(d))); e = uint88(uint(uint8(e))); c = c + d + e; uint88 f; uint88 g; uint88 h; g = 1 + uint88(uint(uint8(g))); h = g.mod.88 * g; uint88 i; d = uint88(uint(uint8(d))) + uint88(uint(uint8(c))); h = h + int88(int88(200).div.2); i = 88 + d.div.1; i = i - uint88(uint(uint8(i))).mod.88; uint88 j; uint88 k; c = uint88(uint(uint8(c))).add.2; k = i.sub.1 + uint88(uint(uint8(c))) - uint88(uint(uint8(c))), f = 0 + uint88(uint(uint8(f))) - uint88(uint(uint8(m))) - uint88(uint(uint8(c))) + uint88(uint(uint8(D))) - uint88(uint(uint8(1))) - uint88(uint(uint8(1))), i.mod.0; i = d + f; f = 0 + 35 * f, j = (H + uint88(uint(uint8(j))) + uint88(uint(uint8(c)))) % x.sub.1; }
}
contract C41_bad_opcodes {
  function test(uint88 x) public pure returns ('a', 'a') {
    (uint88 _0,, uint88 _1)
