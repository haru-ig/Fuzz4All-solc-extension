pragma solidity ^0.8.0;
contract Test
{
    uint x = 20;
    uint z = 1;
    function test() public {
        uint s = 2;
        uint z = 1;
        uint t = s / z;
        uint s2 = s / z;
        uint tt = t * s2;
        t = uint(2.3);
        uint tt2 = tt + t;
        uint u = tt;
        uint z2 = tt | uint(3);
        uint u2 = t + z;
        uint v = uint(tt2);
        uint v2 = uint(u + tt);
    }
}



uint a = 3;
uint b = 75;
uint c = uint(a * b);
bool e = (c >= a);
