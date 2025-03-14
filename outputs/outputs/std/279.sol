pragma solidity ^0.8.0;
contract FirstMutator {
    uint constant modulus = (8 * Uint02) + 1 + (Uint02);
    struct Uint02 {
        uint256 value0;
        uint256 value1;
    }
    uint constant Uint02 = 0x000000000000080000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    uint256 constant Uint8 = 256;
    uint16 constant Int16 = -2 ** 16;
    uint constant Int2 = 10;
    uint4 constant Int4 =  100;
    uint8 constant Int8 = 1000;
    uint16 constant Int16_1 = -65539;
    uint32 constant Int32 = 0xFFFFFFFF;
    struct Int256Struct {
        uint256 value0;
        uint256 value1;
    }
    uint256 constant Int256 = 0xFFFFFFFFFFFFFFFF;
    int256 constant Int4096 = -2 ** 4096;
    uint constant Int_1 = 1;
    uint constant Int54 = 0xffffffffffffffff;
    uint constant Uint4 = 1910131993745217435;
    uint08 constant Uint8_0001 = 0x0001;
    uint64 constant Uint08_0001 = 127;
    uint constant Uint_100 = 100;
    uint28 constant Uint85 = 0x70000;
    uint32 constant Uint85_01 = 0x0170000;
    uint constant Uint555 = 0x55555555;
    uint32 constant Uint32_01 = 0x10000;
    uint_28 constant Uint32_01_01 = 0x1000001;
    uint64 constant Uint64_01 = 0x11000000000000001100000000000000000000000000000000000000000000;
    uint256 constant Uint32_0x100000000000000000000000000000000000;
    uint1 constant Uint64_001 = 1000;
    uint3 constant Uint64_01_00 = 10;
