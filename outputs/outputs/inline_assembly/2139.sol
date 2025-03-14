pragma solidity ^0.8.0;
contract NewVersionOfSame2
{
    function doIt(uint x) public pure returns (uint y) {
        uint t = 315;
        uint z = 639;
        uint w = 879;
        uint id1;
        uint id2;
        w = x;
        id1 = (w | 19) & 3;
        assert(id1 == 2);
        z = 0;
        z = w;
        w = x;
        id2 = (x | 20) & 3;
        assert(id2 == 2);
        y = z / w;
        x = (3 * x + y)*2;
        t = z * z;
        assert(z == y);
        assert(x == t);
        x = 115;
        t = doIt(x);
    }
}
