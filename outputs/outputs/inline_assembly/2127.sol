pragma solidity ^0.8.0;
contract Mutation
{
    function doIt(uint x) public {
        uint z;
        uint w;
        bool o;
        uint id1;
        uint id2;
        uint t;
        uint id3;
        if (x < 99) x = 55;
        w = x;
        t = w / w;
        if (x == 100) x = 5;
        id1 = 0;
        id2 = 1;
        doIt(x);
    }
}
