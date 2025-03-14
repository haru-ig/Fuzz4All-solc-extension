pragma solidity ^0.8.0;
contract NewVersionOfSame3
{
    function doIt(uint x) public pure returns (uint y) {
        uint z = 639;
        uint w = 879;
        uint t = 315;
        uint id1;
        uint id2;
        y = x;
        x = 0;
        x = y;
        id1 = (w | 19) & 3;
        assert(id1 == 3);
        id2 = (this.doIt(x) | 19) & 3;
        assert(id2 == 2);
        y = this.doIt(x);
        assert(y == t);
        x = 115;
        t = doIt(y);
        id1 = (3 * y + t) & 3;
        assert((id1 < 3) && (id2 == 2) && (x == t));
        t = doIt(t);
        id2 = (3 * t + y) & 3;
        assert(id1 == 3 && id2 < 3);
        t = y + t;
        x = 0;
        x = z;
        w = 0;
        w = doIt(x);
        assert(doIt(w) == 315);
        x = 115;
        t = doIt(x);
        assert(x == t);
        x = y;
        w = 0;
        w = z / doIt(x + y);
        assert(doIt(w) == 879);
    }
}
