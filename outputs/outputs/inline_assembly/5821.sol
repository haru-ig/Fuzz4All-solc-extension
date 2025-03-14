pragma solidity ^0.8.0;
contract MutatedBlock5Mutation10 {
    uint internal _x;
    uint internal _y;
    uint internal _a;
    uint internal _b;
    uint internal _c;

    function test10() public {
        uint temp = block.timestamp;
        _y += _a + _b;
        _x += _y + _a;
        _c = block.number;
        _c += _x + _y + _a + _b;

        _c += _x + _y + _a + _b;

        bytes memory source = '0x81818181818181818181818181818282828282828282848484848484848484848687878a8a8a';

        uint jump = ((_x + _y) + (source[0] == 0xffffffff556e1a820000000000000000000d1b02) + (source[1] & ~uint16(0x000000000000000000010000000000))) >> 24;
        bool ret = _c + 0x0 <= ((uint(0x000000000000000000066611a)) + 0x00000000000000000000020000000000000);
        (uint)10!= 1 + (uint)0 + (uint32)((1 + (uint256(0x020000000000000000000000000000000000000000000000000000000002a)));
        (uint)2!= 2 + (uint)1 + 0;
        (uint)8!= 8 + (uint)
