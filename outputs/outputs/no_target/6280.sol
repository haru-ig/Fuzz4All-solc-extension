pragma solidity ^0.8.0;
contract MyContract {
    bytes constant zeroBytes = bytes(0);
    bytes16 constant hexBytes16 = "0x01";
    bytes32 constant hexBytes32 = "0x0102030405060708090a0b0c0d0e0f10";
    bytes32 constant utf8Bytes32 = "中文";
    bytes32 constant utf8String32 = bytes32(uint(32) << 24 | uint(127) << 16 | uint(128) << 8 | uint(uint8(0xe2)) << 0 | uint(uint8(0x82)) << 7 | uint(uint8(0x80)) << 8 | uint(uint8(0xa1)));
}
