pragma solidity ^0.8.0;
contract Same2
{
    function doIt(uint x) public pure returns (uint y) {
        assert(x < 99);
        uint t;
        uint z;
        uint w;
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
        t = w / z;
        y = z;
        z = x;
        y += x * x + (x + z)*z;
        assert(x == y);
        x = 355;
        y = doIt(x);
    }
}
