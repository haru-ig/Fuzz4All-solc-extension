pragma solidity ^0.8.0;
contract C { uint x = 0; function f() public pure { C sub c3 = c5; uint x = c3.x; assert (x >= 0 && x < 100); } }
contract C { uint x = 0; function f() public pure { uint x = 0xffffffff + 1; assert (x - x + x >= 0); } }
contract D { uint x = 1; uint y = 128; function f() public pure { bytes memory b = hex"50657665722064"; uint x = address(12.4).slot(b); uint y = 2**(uint160(-1) - 255 - 255); assert (x*y >= 1261638447182496000); } }
contract E { uint x = 1; uint y = 131072; function f() public pure { uint x = address((uint)bool(0)); assert (y!= -x); } }
contract F { uint8 x = 1; function f() public pure { uint x = uint8(0); assert (x<x); } }
contract G { uint s; uint8  x; function g() public pure { s = uint(3 ** uint256(1023) - 1); x = uint8(7); s = uint(3 ** uint256(1023) + x + 1); assert (s!= ((uint8(1) << 1023) | s)); } }
contract H { uint s; uint8  x; function g() public pure { s = uint(uint32(1)) << uint256(1022); x = uint8(3); s = uint(s - 1 << uint256(1022)); s = s + 1; s = (s + 1) | 2; assert (s!= ((uint8(1) << 1023) | s)); } }
contract I { function f() public pure { uint x = uint256(-1); uint y = uint256(uint(uint255(2) << uint256(-1)))); assert (y < x + 1); } }
