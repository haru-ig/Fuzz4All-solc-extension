pragma solidity ^0.8.0;
contract second{
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor() public {
        a -= 1;
        b *= 2;
        c /= b;
        d += 8;
        e /= c;
    }
}
