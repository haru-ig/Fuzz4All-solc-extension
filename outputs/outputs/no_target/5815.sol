pragma solidity ^0.8.0;

struct S3 {
    uint32 foo;
    uint48 bar;
    uint72 _baz;
}
contract C2 {
    function getbar(uint72) public returns (uint48) {
        uint256 v = uint72(-100) / uint8(0x1281);
        return uint72(v * 0x1000000000000000) + uint72(uint8(v)!= 0x1281 * uint8(v)) + uint48(v / uint8(0x1281)) + uint256(uint128(v - uint8(v)) * 0x10000000000000000) + uint72(v + uint32(uint16(v) - uint8(v))) + uint48(v + v) + uint256(uint128(v + uint32(uint16(v) - uint8(v))) * 0x10000000000000000) + uint72(v + uint32(uint16(v) - uint100)) + uint48(v * v - uint8(v)) + uint256(uint128(v + uint32(uint16(v) - uint100)) * 0x10000000000000000) + uint72(uint8(0x1281 * 0x1281 * 0x1281 * 0x1281 * 0x1281 * 0x1281 * 0x1281 * 0x1281 * 0x1281 * 0x1281 * 0x1281) * v + uint256(uint128(v + v) * 0x10000000000000000) + uint72(v * uint256(uint128(v + v) * 0x10000000000000000)) + uint48(uint128(v - 0) * uint256(uint128(v + v) * 0x10000000000000000)) + uint256(uint
