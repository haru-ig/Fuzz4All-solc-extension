pragma solidity ^0.8.0;
contract Restricted {
    uint56 result;
    uint j;
    address a;
    address b;
    function test() private {
        result + 1;
        j = i;
        result--;
        i = i;
        result <<= x_;
        i = a;
        i /= j;
        i = a;
        b = b + 1;
        i = a;
    }

    constructor() public {
        test();
    }

    function check()
        public {
            uint i = 25;
            j = 33;
            a = 0x030201000000000000000000000000000000001;
            a = 0x2010000000000000000000000000000000000;
            b = 0x000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f202122232425262728292a2b2c2d2e2f303132333435363738393a3b3c3d3e3f404142434445464748494a4b4c4d4e4f505152535455565758595a5b5c5d5e5f606162636465666768696a6b6c6d6e6f707172737475767778797a7b7c7d7e7f;
            i += x_;
            j = i + i;
            i = i * i;
            i = i / j + 1;
            i = i %% j;
            i = i & j;
            i = i | j;
            i = i - i;
            i = i << i;
            i = i >> j;
            i = i - i;
            j = 3
