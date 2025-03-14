pragma solidity ^0.8.0;
contract B { uint128 a; constructor() public {a = uint128(uint8(0x3)));} }
contract B_2 { uint128 a; constructor() public {a = uint128(uint8(15)));} }
contract B_3 { bytes32 a; constructor() public {a = bytes32(uint256(uint8(0x3)));} }
contract B_4 { uint256 a; constructor() public {a = uint256(uint8(0x3)));} }
pragma solidity ^0.8.0;
contract B { uint256 a; constructor() public {a = uint256(uint8(15)));} }
contract B_2 { uint256 a; constructor() public {a = uint256(uint8(31)));} }
contract B_3 { uint256 a; constructor() public {a = uint256(uint8(0x0102)));} }
contract B_4 { uint256 a; constructor() public {a = uint256(uint8(15)));} }
pragma solidity ^0.8.0;
contract C { bytes256 a; uint128 b; constructor() public {a = bytes256(uint8(0x3)));b = uint128(uint8(0x3))} }
contract C_2 { bytes256 a; constructor() public {a = bytes256(uint8(15)));} }
contract C_3 { uint256 a; constructor() internal {a = uint256(uint8(0x3)));} }
pragma solidity ^0.8.0;
contract C { uint256 a; constructor() internal {a = uint256(uint8(15)));} }
contract C_2 { uint256 a; uint256 b; constructor() public {a = uint256(uint8(15)));b = uint256(uint8(31))} }
contract C_3 { uint256 a; constructor() internal {a = uint256(uint8(0x3));} }
pragma solidity ^0.8.0;
contract D { constructor() public {B b = new B;} }
contract D_2 { constructor() public {B_2 b = new B_2;} }
contract E { constructor() public {B b = new B;B_2 a = new B_2;} }
contract E_2 { constructor() public {B b = new B;} }
