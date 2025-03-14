pragma solidity ^0.8.0;
contract Different
{
    function doIt() public returns (uint) {
        return 99;
    }
}
contract S28Sample1
{
    uint y;
    uint z;
    uint w;
    uint t;
    uint x;
    uint id1;
    uint id2;

    function doIt(Different x) public returns (Different yx, uint z) {
        uint z;
        uint w;

        uint id1;
        uint id2;
        uint t;

        w = x.doIt();
        t = w / w;
        yx = x;
        y = x * x;
        y += t;

        id1 = 0;
        id2 = 1;
        z = y;
        id1 = 0;
        id2 = 1;
        w = x.doIt();
        t = w / w;
        yx = x;
        y = x * x;
        y += t;

    }
}
