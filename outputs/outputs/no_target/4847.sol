pragma solidity ^0.8.0;
library B { function f() public pure returns (uint8) { return 0; } }
library C { function f() public pure returns (uint8) { return 128; } }
library D { function f() public pure returns (uint8) { return 255; } }
contract E is D { function f() public pure returns (uint8) { return D.f(); } }
contract F { function f() public pure returns (uint8) { B b; if (b.f() > 63) { B.f(); } C c; c.f(); D d; d.f(); } }
contract Test { function test() returns (uint) { F f; f.f(42); return 1; } }
