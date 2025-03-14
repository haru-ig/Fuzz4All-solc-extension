pragma solidity ^0.8.0;
contract B { bytes32 a; constructor() public { a = bytes32(a + unchecked((bytes32)uint8(uint8(0x3)))); } }
contract C { bytes32 public a; constructor() public {a = B(a).a; } }
contract D_1 { bytes32 public a; constructor() public {a = B_2(a).a; } }
contract D_2 { bytes32 public a; constructor() public {a = C(a).a; } }
contract E_1 { bytes32 public a; constructor() public {a = D_1(a).a; } }
contract E_2 { bytes32 public a; constructor() public {a = D_2(a).a; } }
contract F_1 { bytes32 public a; constructor() public {a = E_1(a).a; } }
contract F_2 { bytes32 public a; constructor() public {a = E_2(a).a; } }
