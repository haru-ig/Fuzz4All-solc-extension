pragma solidity ^0.8.0;
contract Different
{
    function doIt() public returns (uint) {
        return 99;
    }
}
contract S28Sample2
{
    Different diff;
    function doIt(uint x) public returns (uint y) {
        uint z;
        uint w;
        uint id1;
        uint id2;
        uint t;
        w = x;
        t = w / w;
        y = x * x;
        y += t;
        id1 = 0;
        id2 = 1;
        diff.doIt();
        t = x;
        id1 = 0;
        id2 = 1;
        w = x;
        y += x * x;
    }
}
