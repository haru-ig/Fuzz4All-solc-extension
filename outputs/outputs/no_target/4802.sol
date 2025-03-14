pragma solidity ^0.8.0;
contract B { constructor() public {new B_2;} }
contract B_2 { constructor() public {new B_2;} }
contract B_3 { address b; constructor() public {b = address(0x0);} }
contract C { bytes b; constructor() public {b = bytes(0x0);} }
contract A { contract B b; constructor() public {B b3(new B()) public {b = b.a;} } }
contract D { function d(bytes b) public {A a1(new A()) public {b = a1.b.a;}} }
contract E { bytes2 b; constructor() public {b = bytes2(0x0);} }
contract F { function h(E e) public {C c1(new C()) public {c1.b = e.b;} } }
contract Main { uint v; function f() public returns(uint) {uint a; uint b; F f1(new F()); b = a; } }

pragma solidity ^0.8.0;
contract A { uint8 a; constructor() public {a = uint8(0x3);} }
contract C { uint8 i; uint8 d; constructor() public {i = uint8(0x3); d = uint8(safeAdd(i, 0x4));} }
contract D { uint8 a; uint8 b; constructor() public {a = 0x3; b = 0x3;} }
contract F { uint8 a; uint8 d; uint8 b; constructor() public {a = 0x3; d = uint8(safeAdd(a, 0x4)); b = 0x3;} }
contract G { uint8 d; uint64 e; constructor() public {e = safeSub(uint64(uint8(0x3)), uint8(0x3)); d = (c1.e, b); } }
contract H { uint256 f; uint256 c; uint256 g; uint256 h; uint256 d; uint256 b; constructor() public {b = 0xFFFFFFFF; } }
contract Main { I i; function o() public {i.f = uint8(0x8); i.o(); i.h = uint8(0x3);} }
contract I { uint8 a; uint8 c; uint8 e; uint8 d; uint8 b; uint8 b; uint256 h; uint256 f; uint256 g; uint256 b; uint256 e; uint256 c; uint25
