pragma solidity ^0.8.0;
contract Same
{
    function doIt(uint x) public returns (uint y) {
        uint z;
        uint w;
        uint id1;
        uint id2;
        uint t;
        assert(x < 99);
        x = 55;
        w = x;
        t = w / w;
        y = x;
        y += t;
        id1 = 0;
        id2 = 1;
        doIt(x);
        x = 100;
        w = x;
        t = w / w;
        y = x;
        y += x * x;
    }
}
