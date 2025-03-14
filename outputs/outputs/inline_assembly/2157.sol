pragma solidity ^0.8.0;
contract NewVersionOfSame
{
    function doIt(uint x) public pure returns (uint y) {
        uint t;
        uint z = 639;
        uint w = 879;
        uint id1;
        z = x;
        t = z / w;
        y = t;
        id1 = z * 2 & 3;
        assert(id1 == 2);
    }
}
