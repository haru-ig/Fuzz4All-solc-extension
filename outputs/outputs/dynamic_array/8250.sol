pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Solidity2 {
    struct TestStruct {

    uint64 _pad;
    uint8 data1;
    uint32 data2;
    uint56 data4;
    uint64 data8;
    uint128 data16;
    uint256 data32;
    uint512 data64;
    uint1024 data128;
    uint2048 data256;
    uint3072 data512;
    uint4096 data1024;
    uint5120 data2048;
    uint6053 data4096;
    uint6056 data8192;
    uint6049 data16384;
    uint6052 data32768;
    uint6051 data65536;
    uint6050 data131072;
    uint6049 data262144;
    uint7034 data524288;
    uint321848 uint6055 data1048576;
    };
    struct TestStruct2 { test uint test; test uint256 _pad; uint test2; uint test4; uint test8; }
    TestStruct _testStruct;
    TestStruct2 _testStruct2;
    constructor() public {
        uint64 a = 0x00007310;
        x = a;
        y = a/10;
        _testStruct.value = 0xFEe2167719d4D7B028D3BCCf2f085F37628A676F;
        address addr = 0x75997D77A89EC21b80f5d7Af75F9264F674C7293;
        x = addr.balance;
    }
    modifier withModifyX() {
        x = 1
