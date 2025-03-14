pragma solidity ^0.8.0;
 contract Mutations { function f() public { y = 0x800000000000000000000000000000000000001; } }
contract Vulneratr2 { uint256 y = 0; constructor() public { y = 0xffffffff; } }

contract Mutations2 { function f() public { y = 0xa0000000000000000000000000000000000000000000; } }

contract Consequence {
  function f() public { require(y == 0); }
}
contract Test { function test() public { Mutations2 m; m.f(); mutagenics.Consequence().f(); Mutations c; c.f(); Mutations2 mm; mm.f(); v = Vulneratr(0); v.f(); x = Mutations(0); x.f(); x = Mutations2(0); x.f(); require(v.y == this.y); require(x.y == this.y); v.y += 1; x.y += 1; }v = Vulneratr2(0); v.f(); v.y = 2**256-1; x = Mutations(0); x.f(); x.y = 2**256-1; }v.y += 1; x.y += 1; } v = Vulneratr(0); v.f(); require(v.y == 0); }contract Vulneratr3 { uint y = 0; function f() public { y = 0xffffffff; } } contract Mutations3 { function f() public { y = 0xa000000000000000000000000000000000000000000; } } contract Consequence3 { function f() public { require(y == 0xa00000000000000000000000000000000000000000); } }

contract Test3 { function test() public { Mutations3 m; m.f(); Mutations2 c; c.f(); Mutations2 mm; mm.f(); v = Vulneratr(0); v.f(); x = Mutations(0); x.f(); x = Mutations2(0); x.f(); require(v.y == this.y); require(x.y == this.y); v.y += 1; x.y += 1; test3.Consequence().f(); require(v.y == this.y
