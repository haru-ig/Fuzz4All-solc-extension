pragma solidity ^0.8.0;
contract B { bytes32 a; address m; constructor() public {a = bytes32(uint256(uint8(0x3)));m = address(this);} }
contract B_2 { bytes32 a; address m; constructor() public {a = bytes32(uint256(uint8(0x3)));m = address(this);} }
contract B_3 { bytes32 a; mapping(uint8=>address) m; constructor() public {a = bytes32(uint256(uint8(0x3)));m[15] = address(this);} }
contract B_4 { bytes32 a; mapping(uint8=>address) m; constructor() public {a = bytes32(uint256(uint8(0x3)));m[15] = address(0xBCDCAFE);} }
contract B_5 { bytes32 a; mapping(bytes32 => bytes32) m; constructor() public {a = bytes32(uint256(uint8(0x3)));m[bytes32(uint256(uint8(15)))] = bytes32(uint256(uint8(0xCD))));} }
contract B_6 { bytes32 a; mapping(bytes32 => bytes32) m; constructor() public {a = bytes32(uint256(uint8(0x3)));m[bytes32(uint256(uint8(15)))] = bytes32(uint256(uint8(0xCD))));} }
contract B_7 { bytes32 a; function f() public {a = bytes32(uint256(uint8(0x3)));} }
contract B_8 { bytes32 a; event MyEvent(bytes32 indexed v); function g() public {a = bytes32(uint256(uint8(0x3)));emit MyEvent(a);} }
