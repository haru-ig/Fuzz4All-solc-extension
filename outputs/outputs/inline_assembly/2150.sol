pragma solidity ^0.8.0;
contract Version2
{
    uint x;
    function doIt(uint x) public pure returns (uint y) {
        uint id1;
        uint id2;
        x = x;
        x = x;
        x = 3 * x + y;
        assert(x == 6);
        uint z = doIt((3 * x + y) & 3);
        assert(z == 2);
        uint w = doIt(0);
        assert(w == 0);
    }
}
