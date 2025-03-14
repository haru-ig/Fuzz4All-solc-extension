pragma solidity ^0.8.0;
contract mutationsolidity0823b { function f() public pure { uint f; } }
contract mutationsolidity0824a { function f() public pure { uint x = 0; uint y; { x+y; } } }
contract mutationsolidity0824b { function f() public pure { uint x = 0; uint y; { x+y; f(x); f(y); } } }
contract mutationsolidity0825a { function f() public pure { uint x = 0; uint x; { x += 2; } } }
contract mutationsolidity0825b { function f(uint x) public pure { uint z; { x += z; } } }
contract mutationsolidity0826a { function f() public pure { uint x = 0; uint x; { x = x / 2; } } }
contract mutationsolidity0826b { function f() public pure { uint x = 0; uint x; { x = 5 / x; } } }
contract mutationsolidity0827a { function f() public pure { uint x = 0; uint y; { x = x * x; } } }
contract mutationsolidity0828a { function f() public pure { uint x = 0; uint x = x / 2; } }
contract mutationsolidity0829a { contract D1 { function S1() public pure {} } contract D2 { function S2() public pure {} } contract C { constructor () public { D1 d1; D2 d2; d1 = d2; } function S() public pure { d1.S1(); d2.S2(); } } contract M { M(I32 i) public { I32 j; } constructor (I32 j) public { D d; d = I32(new C()).S(); d.S(); } function I2() public pure { I2 = i1; } function I3() public pure { I3 = i2; } function I4() public pure { I4 = i3; } I32 I2; I32 I3; I32 I4; I32 I2; I32 i1 } contract A { function V4() public pure { S c; } contract I32 is { uint i1; uint i2; uint i3; uint i4; function set02(uint i1_) public { i1 = i1_; } function set03(uint i1_) public { i2 = i1_; } function set04(uint i1_) public { i3 = i1_; } function set05(uint i1_) public { i4 = i1_; } } contract D is contract I32, I1 { uint j; constructor () public { set02(1); j = 1; }
