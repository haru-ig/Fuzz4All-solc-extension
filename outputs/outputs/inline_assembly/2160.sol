pragma solidity ^0.8.0;
contract NewVersionOfAgain
{
    function doIt(uint x) public pure returns (uint y) {
        uint z = 639;
        uint w = 879;
        uint id1;
        z = x;
        y = z / w;
        id1 = z * 2 & 3;
        assert(id1 == 2);
    }
}
