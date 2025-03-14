pragma solidity ^0.8.0;
contract NewVersionOfSame
{
    function doIt(uint x) public pure returns (uint y) {
        uint t = 315;
        uint z = 639;
        uint w;
        uint id1;
        uint id2;
        x = z;
        id1 = (z | 19) & 3;
        assert(id1 == 2);
        x = 0;
        x = t;
        z = 0;
        z = z;
        y = z / x;
        assert(z == y);
        assert(x == t);
        assert(3 * x + y == t);
        w = 879;
        z = z;
        t = doIt(x) & 3 / 4 * t + 0x1234567890123456678901234567890 * x + 0xfff;
        x = 115;
        t = doIt(x);
        x = 115;
        z = z;
        id2 = doIt(z) & 3;
        w = w & id2;
        assert(z == t);
        assert(x == t);
        assert(doIt(w) == t);
    }
}
