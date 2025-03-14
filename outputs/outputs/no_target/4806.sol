pragma solidity ^0.8.0;
contract C { uint public x; constructor() internal C(uint8(0x5)) public {x = uint(a);} }
contract C_2 { uint public x; constructor() internal C(uint8(0x5)) public {x = uint(a);} }

pragma solidity ^0.8.0;
contract D { uint public x; constructor() C() public {a; unchecked {x = uint(uint32(uint64(0x3)) >> 100000000);} x = uint(a);} }
contract D_2 { uint public x; constructor() C() public {a; unchecked {uint160 a = uint160(uint32(uint64(0x3)) >> 100000000);} unchecked {a = uint160(uint32(uint64(0x3)) >> 100000000);} x = uint(a);} x = uint(uint32(uint64(0x3)) >> 100000000); }
contract D_3 { uint public x; constructor() C() public {a; unchecked {uint160 a = uint160(uint32(uint64(0x3)) >> 100000000);} a = uint160(uint32(uint64(0x3)) >> 100000000);} unchecked {x = uint(a);} x = uint(a);} }
