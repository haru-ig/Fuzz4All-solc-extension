pragma solidity ^0.8.0;
contract semanticallyequivalent12
{
    uint16 x = 3;
    uint16 y = 2;
    function test()public {
        uint32 a = 1;
        uint32 b = 2;
        uint16 c = 1;
        uint16 d = 2;
        uint8 e = 1;
        uint8 f = 2;
        uint s = 1;
        uint t = 2;
        x = a + b;
        x += c;
        x += d;
        x -= e;
        x -= f;
        x *= s;
        x /= t;
        x %= t;
        x >>= s;
        x <<= s;
        x >>= s;
        x << c;
        x &= y;
        x ^= y;
        x |= y;
    }
}
