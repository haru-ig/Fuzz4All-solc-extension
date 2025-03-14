pragma solidity ^0.8.0;
contract Test
{
    struct Point3X3
    {
        uint x;
        uint y;
    }
    uint z = 0;
    uint x;
    function test() public {
        point.x = x + z;
        point.x >>= z;
        point.y -= z;
        point.y >>= z;
        point.y <<= z;
        z = 3;
        point.x <<= z;
        z = 2;
        point.x += z;
        point.y <<= z;
        z = 0;
        point.x <<= z;
        z = 0;
        x &= 0x0000000000000001;
        x = 0xfffffffffff;
        point.y >>>= z;
        z = 3;
        point.x >>= z;
        z = 1;
        point.x &= z;
        point.x >>= z;
        point.x >>= z;
        z = 3;
        point.y %= z;
        point.x |= z;
        x ^= 1;
        point.y <<= z;
        z = 0;
        point.x |= z;
        point.y <<= z;
        z = 4;
        x = (x << 2) | 1;
        point.y >>= z;
    }
}
