pragma solidity ^0.8.0;
contract NewVersionOfSame
{
    function doIt(uint x) public pure returns (uint y) {
        uint t = 315;
        uint z = 639;
        uint w = 879;
        uint id1;
        uint id2;
        z = x;
        y = t + z;
        id1 = (z | 19) & 3;
        assert(id1 == 2);
        z = 0;
        w = 0;
        w = w;
        z = 0;
        z = z;
        t = z / w;
        assert(z == t);
        assert(w == t);
        assert(3 * z + t == t);
        z = 115;
        x = t + z;
        assert(x == z);
        id1 = z*2 & 3;
        assert(id1 == 2);
    }
}
