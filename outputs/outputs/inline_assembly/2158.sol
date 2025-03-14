pragma solidity ^0.8.0;
contract NewVersionOfSameB
{
    function doIt(uint x) public pure returns (uint y) {
        uint t = 315;
        uint z = 639;
        uint w = 879;
        uint id1;
        uint id11;
        uint id2;
        z = x;
        w = t + z;
        id1 = t + z;
        assert(id1 == z);
        id1 = 2*id1 - 3;
        assert(id1 == -5);
        id11 = id1 >> 2;
        assert(id11 == 1);
        id11 = 3*id11 + (id1 - 1 + 3) - 2;
        assert(3*id11 + id2 == t);
        id11 = id1 >> 8;
        assert(id11 == 0);
        id11 = 3*id11 + (id1 - 1 + 1);
        assert(z == w);
        assert(t == 3 * id11);
        z = 115;
        t = t + z;
        assert(z == 115);
        id11 = z*2 & 3;
        assert(3*id11 == z);
    }
}
