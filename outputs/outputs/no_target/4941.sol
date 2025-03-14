pragma solidity ^0.8.0;
contract G { function f(uint x) public pure { uint y = unchecked (uint (~x >> 1) + x); require (y < 20); } }
contract H { function f(uint x) public pure { uint y = 20 ^ x; require (y < 20); } }
contract L { function f(address) public pure { address d = unchecked (address (51)); require (d < 20); unchecked { } } }
contracts Test { function run() public { address[] memory a; G g = G(address(20)); H h = H(address (20)); E e = E (address(20)); L t = L(address(20)); g.f (address(10)); h.f (10); address i = address(10); e.f (address(10)); t.f (address(10)); unchecked { } } }
