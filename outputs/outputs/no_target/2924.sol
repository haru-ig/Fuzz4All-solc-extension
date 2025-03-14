pragma solidity ^0.8.0;
contract second{
    struct first{
        uint a;
        uint b;
        uint c;
        uint d;
        uint e;
    }
    first storage f;
    function first() public {
        f.a += 1;
        f.b *= 2;
        f.c /= b;
        f.d += 8;
        f.e /= c;
    }
}
