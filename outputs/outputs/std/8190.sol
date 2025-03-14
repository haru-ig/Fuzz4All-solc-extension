pragma solidity ^0.8.0;
contract Convert {
    uint[] a;
    bytes256 empty;
    address addr = address(0);
    uint8 m;
    uint16 n;
    uint32 o;
    uint64 p;
    uint storage r;
    bool s;
    uint8[] data1;
    bytes256[] data2;
    address[] data3;
    uint16[] data4;
    uint32[] data5;
    uint64[] data6;
    uint256 s32;
    uint8 s64;

    function f() public returns (uint a, bytes256 b, address c, uint8 d, uint16 e, uint32 f) {
        addr = address(this);
        addr = addr - 1;
        uint x = address(this);
        bytes256[] memory data7;
        uint16 memory data8;
        bytes d = bytes("12345");
        uint16[] memory data9 = new uint16[](5);
        data9[0] = 53;
        assembly {
            mstore(0x0, 1)
            mstore(0x20, 1)
            mstore(0x40, 1)
            mstore(0x60, 2)
            mstore(0x80, 1)
            mstore(0xA0, 1)
            mstore(0xC0, 3)
            mstore(0xE0, 2)
            sstore(0x2000, 0x80)
            sstore(0x1000, 0x8080)
            sstore(0xC000, 0x100)
            setcode(x)
