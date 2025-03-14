pragma solidity ^0.8.0;
contract B1_1 { bytes32 a; constructor() public {a = bytes32(uint256(uint8(0x1)));} }
contract B1_2 { bytes32 a; constructor() public {a = bytes32(uint256(uint8(255)));} }
