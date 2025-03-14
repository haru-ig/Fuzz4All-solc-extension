pragma solidity ^0.8.0;
contract Same2
{
    function doIt(uint x) public returns (uint y) {
        uint z;
        uint w;
        uint id1;
        uint id2;
        uint t;
        assert(x < 99);
        z = 0;
        z = 20;
        w = z;
        t = w / z;
        y = z;
        z = x;
        y += x * x + (x + z)*z;
    }
}
