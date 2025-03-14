pragma solidity ^0.8.0;
contract NewVersionOfSame
{
    function doIt(uint x) public pure returns (uint y) {
        uint t = doIt(115);
        uint z = 639;
        uint w = 879;
        assert (z == 639);
        assert (t == 315);
        assert (z + 1 == 640);
        assert(y == 115);
        assert (w == 880);
        doIt(x);
        y = t + x;
        assert(z+x == t);
        id1 = (z | 19) & 3;
        assert (id1 == 1);
    }
}
