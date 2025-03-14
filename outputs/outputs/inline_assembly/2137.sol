pragma solidity ^0.8.0;
library Same2
{
    function doIt(uint x) public pure returns (uint y) {
        uint z;
        uint w;
        uint id1;
        uint id2;
        w = x;
        id1 = (uint19(w) | 19) % 4;
        assert(id1 == 2);
        z = 0;
        z = uint19(w);
        w = x;
        id2 = (x | 20) % 4;
        assert(id2 == 2);
        y = uint19(z / w);
        z = 0;
        z = x;
        y += x * x + (x + z) * z;
        assert(x == y);
        x = 355;
        y = doIt(x);
    }
}
