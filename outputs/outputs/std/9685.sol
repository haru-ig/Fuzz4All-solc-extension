pragma solidity ^0.8.0;
contract MutateBigNeg {
    uint x;
    uint y;
    constructor() {
        uint x = 2 * 0x2;
        uint y = 0x3;
        if (x!= x) throw;
        if (y < x) throw;
        if (x + y > 0x10FFFFF) throw;
        assert(x == x);
        assert(y < x);
        assert(x + y > 0x10FFFFF);
        x++;
        y -= x;
        if (x!= y) throw;
    }
}
