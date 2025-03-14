pragma solidity ^0.8.0;
contract UseCase2
{


    function doIt(uint x) public pure returns (uint y) {

        int constant T = 100;
        uint x1 = x;
        uint x2 = T * x * 30 + 3 * T + x + 3;
        uint z = (x2 | 2) & 1;
        uint w = (x1 | 19) & 3;
        assert(z == 0);
        assert(w == 0);
        x2 = x1 - 1;
        x1 = x2;
        x2 = T * x * 10 + 3 * T + x + 3;
        assert(x1 == x2);
        x1 = T * x * 50 + 3 * T + x;
        assert(x1 == x2);
        x1 = -x;
        x2 = (x | 19) & 3;
        assert(x1 == x2);
        x2 = x1 + T * x * 10 + 3 * T;
        assert(x2 == x1);
        x = (x2 | 2) & 1;
        t = x * x;
        i = x * x;
        j = t;
        k = i + 2;
        l = (t | 1) & 1;
        m = x;
        n = (x | 2) & 1;
        o = z;
        p = x;
        q = 0;
        x =  t + 2;
        q = j / m;
        assert(q == n);
        uint t0 = (x | 20) & 3;
        uint t1 = 30 * (2 * x2 - j);
        uint t2 = (x2 | 20) & 3;
        /* This asserts that t1 and t2 are equal to X (2 * X - J
