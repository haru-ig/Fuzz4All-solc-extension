pragma solidity ^0.8.0;
contract mutated0b32
{
    function a(uint32 x) internal pure
    {
        if (x>0x7fff)
           assert(x>0x7f80);
    }
    function b(uint32 x) public {
        uint32 y = x >> 21;
    }
}
contract mutated0b32Test
{
    function test() public
    {
        uint32 x = 1;
        uint32 p0 = x;
        mutated0b32.a(x);
        uint32 p1 = x;
        assert(p0 == x);
        uint32 p2 = x;
        assert(p1 == x);
        uint32 p3 = x;
        x = x << 20;
        p4 = x;
        assert(p0 == x);
        uint32 p5 = x;
        assert(p1 == x);
        uint32 p6 = x;
        assert(p2 == x);
        uint32 p7 = x;
        x = x >> 21;
        p8 = x;
        assert(p0 == x);
        uint32 p9 = x;
        assert(p1 == x);
        uint32 p10 = x;
        assert(p2 == x);
        uint32 p11 = x;
        uint32 p12 = x;
        uint32 p13 = x;
        uint32 p14 = x;
        uint32 p15 = x;
        uint32 p16 = x;
        uint32 p17 = x;
        uint32 p18 = x;
        uint32 p19 = x;
    }
}
