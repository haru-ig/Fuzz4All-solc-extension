pragma solidity ^0.8.0;
contract Mutate18To27
{
    uint16 d = 0xF0043E38;
    uint16 d2 = 0x00060200;
    function mutate27To23
    (
        uint8 a,
        uint8 b,
        uint8 c
    ) public pure
    {
        d |= (uint16(a)) << 8;
        d |= (uint16(b)) << 16;
        d |= (uint16(c)) << 17;
        d2 |= (uint16(a)) << 9;
        d2 |= (uint16(b)) << 18;
        d2 |= (uint16(c)) << 2;
    }
}
contract Mutate23To24
{
    uint16 d = 0xF0043E38;
    uint16 d2 = 0x00060200;
    function mutate64To63
    (
        uint8 b,
        uint8 c
    ) public pure
    {
        v = b;
        w = c;
        a = 1;
        b = 0;
        c = 0;
        d = 0;
        d = 0xFFFF;
        d2 = b;
        d = 1;
        b = 0;
        c = 0;
    }
}
contract Mutate24To28
{
    uint16 d = 0xF0043E38;
    uint16 d2 = 0x00060200;
    function mutate64To62
    (
        uint8 a,
        uint8 b,
        uint8 c
    ) public pure
    {
        v = a;
        w = b;
        a = 1;
        b = 0;
        c = 0;
        d = 1<<(96+64);
        d2 = c;
        b = 0;
        c = 0;
        a = 1;
        b = 0;
        c = 0;
        d = d>>63;
        d2 ^= (d>>96);
    }
}
