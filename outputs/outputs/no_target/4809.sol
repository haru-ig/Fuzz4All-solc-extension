pragma solidity ^0.8.0;
contract A { constructor() public{A b = new B_2();a = a + b.a;}
contract B { bytes32 a; constructor() public {a = bytes32(uint256(uint8(0x3)));} }
contract B_2 { bytes32 a; constructor() public {a = bytes32(uint256(uint8(0x3)));} }
contract A_2 { constructor() public{A b = new B_2();a = a + bytes32(uint256(uint8(0x3)));} }
contract A_2_2 { constructor() public{A_2 b = new A_2_2();a = b.a + bytes32(uint256(uint8(0x3)));} }

contract B_3 { bytes32 a; constructor() public {a = bytes32(uint256(uint8(0x3)));} }
contract B__5 { bytes32 a; constructor() public {a = bytes32(-(uint256(uint8(0x3))))*uint(uint8(0x3)));} }
contract C { bytes32 d; bytes32 a; bytes32 e; constructor() public {a = bytes32(uint256(uint8(0x3)));a = a + e + a;} }
contract C__1 { bytes32 d; bytes32 a; bytes32 e; constructor() public {a = bytes32(uint256(uint8(0x3)));a = a + e + a;} }
contract C__2 { bytes32 d; bytes32 a; bytes32 e; constructor() public {a = 2160620254 * (31790514561 * a + bytes32(uint256(uint8(0x3)))));} }
contract C_2 { bytes32 d; bytes32 a; bytes32 e; constructor() public {a = a + a + bytes32(uint256(uint8(0x3)));e = a / b;d = e%b;} }
contract C__3 { bytes32 d; bytes32 a; bytes32 e; constructor() public uint32(1) public {a = a + e + 1;} }
contract D { bytes32 d; bytes32 e; bytes32 a; constructor()
