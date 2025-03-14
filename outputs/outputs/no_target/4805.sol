pragma solidity ^0.8.0;
contract B { bytes32 a; constructor() public {a = bytes32(uint256(uint8(0x3)));} }
contract B_2 { bytes32 a; constructor() public {a = bytes32(uint256(uint8(15)));} }
