pragma solidity ^0.8.0;
contract Same2
{
    function doIt(uint x) public pure returns (uint y) {
        uint t;
        uint z;
        uint w;
        uint id1;
        uint id2;
        w = x;
        id1 = (w | 20) & 3;
        assert(id1 == 2);
        z = 0;
        z = x;
        w = x;
        id2 = 20;
        assert(id2 == 2);
        t = x / 2 + (2*z)/z;
        y = x;
        x = 355;

        y = doIt(x);

        assert(x == y);
    }
}
