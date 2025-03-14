pragma solidity ^0.8.0;
contract NewVersionOfSame2
{
    function doIt(uint x) public pure returns (uint y) {
        uint t = 315;
        uint z = 639;
        uint w = 879;
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
        x = 115;
        t = doIt(x);
        x = 115;
        id1 = (3 * x + y) & 3;
        assert(id1 == 2);
    }
}
