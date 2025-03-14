pragma solidity ^0.8.0;
contract TestMutated728 {
    function mul(uint x, uint y) pure public returns (uint) {
        if (x < 0 || y < 0) {
            uint w;
            div(x);
            div(y);
            if (y >= x) {
                uint s0 = z[x - 1];
                uint s1 = z[x] + s0 * y;
                uint z3;
                if (s1 < 0) {
                    uint s2 = z[x - 1];
                    uint t0 = sqr(x);
                    uint t1 = t0 * s2;
                    uint w3;
                    if (t1 < 0) {
                        uint s2 = mul(s1, s2);
                        uint t2 = sqr(y);
                        uint t3 = sqr(y * (s2 / 2));
                        uint w4;
                        if (t2 < 0) {
                            uint s2 = mul(s1, s2);
                            uint t2 = mul(t1, sqr(x * s2));
                            uint t3 = mul(t2, sqr(t0 / 2));
                            uint w5;
                            if (t3 < 0) {
                                uint s2 = sqr(x);
                                uint t2 = mul(t1, sqr(x * s2));
                                uint t3 = mul(t2, sqr(t0 / 2));
                                uint w6;
                                if (t3 >= x) {
                                    s1 = x - 1;
                                    s1 = s1 + s1;
                                    s1 = sqr(s1);
                                    s1 = t0 * s1;
                                    s1 = mul(y, t0);
                                    s1 = s1 + s1;
                                    s1 = div(x);
                                } else if (t1 >= 0) w5 = t1; else w5 = y - t1;
                                s1 = s1 - t3 + y;
                                s1 = y - w5 - t3;
                                s1 = s1 + s1;
                                s1 = s1 + x;
                                s1 = s1 + s1;
                                uint z4 = z[x - 2];
                                uint z5 = z[x];
                                uint z6 = s1 + z5;
                                uint z7
