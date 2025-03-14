pragma solidity ^0.8.0;
contract S2 { uint public x; uint constant _MOD = 71; function f() public { x -= _MOD; } }
contract S3 { uint public x; uint constant constant_overflow = 71; function f() public { x = -constant_overflow; } }
contract S4 { uint public x; uint constant constant_underflow = 71; function f() public { x -= constant_underflow; } }
contract S5 { uint public x; uint constant constant_invalid_1 = 71; function f() public if (true) { x = -constant_invalid_1; } }
contract S6 { uint public x; uint constant constant_invalid_2 = 71; function f() public if (true) { x = 0 / constant_invalid_2; } }
contract S7 { uint public x; function f() public { x += 71; } }
contract S8 { uint public x; uint constant constant_overflow2 = 71; function f() public { x = -constant_overflow2; } }
contract S9 { uint public x; uint constant constant_overflow3 = 71; function f() public { x = -(constant_overflow3 * (2 ** 255)); } }
contract S10 { uint public x; uint constant constant_overflow4 = 71; function f() public { x = uint(constant_overflow4); } }
contract S11 { uint public x; uint constant constant_overflow5 = 71; function f() public { x--: uint; } }
contract S12 { uint public x; uint constant constant_overflow6 = 71; function f() public { x = - (constant_overflow6 * 2 ** 255); } }
contract S13 { uint public x; uint constant constant_underflow2 = 71; function f() public { x += constant_underflow2 * 2 ** 127; } }
 contract S14 { uint public x; uint constant constant_underflow3 = 71; function f() public { x *= constant_underflow3; } }
contract S15 { uint public x; uint constant constant_overflow7 = 71; function f() public { x /= constant_overflow7; } }
contract S16 { uint public x; uint constant constant_overflow8 = 71; function f() public if (10 == 10 * constant_overflow8) { x = 10 / constant_overflow8; } }
contract S17 { uint public x; uint constant constant_overflow9 = 71; function f() public { x /= constant_overflow9; } }<fim_middle>contract S18 { uint public x; uint constant constant_overflow10 = 71; function f() public { x /= constant_overflow10; }
