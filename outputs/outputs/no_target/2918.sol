pragma solidity ^0.8.0;
contract first{
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor() public {
        a += 1;
        b = b * 2;
        c = c / b;
        d += 8;
        e = e / c;
    }
}
