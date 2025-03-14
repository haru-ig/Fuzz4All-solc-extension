pragma solidity ^0.8.0;
contract NotSame
{
    function doIt(uint x) public pure returns (uint y) {
        uint z;
        uint w;
        uint id1;
        uint id2;
        w = x;
        id1 = (w | 19) & 3;
        assert(id1 == 1);
        z = 0;
        z = w;
        w = x;
        id2 = (w | 20) & 3;
        assert(id2 == 2);
        y = z/z;
        assert(z == x / y);
    }
}
