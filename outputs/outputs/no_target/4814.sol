pragma solidity ^0.8.0;
contract B { bytes32 a = bytes32(uint256(uint8(0x3))); }
contract B_2 { bytes32 a = bytes32(uint256(uint8(15))); }

contract C { function() public {} }
#pragma library --abi-version 2
contract Lib { function log4(bytes) internal; function main() public {} }
