pragma solidity ^0.8.0;
contract A{
    function a(uint x) public{
        uint y;
        a(1);
        a(1, 0x75, 0x4f, 0x70, 0x48, 0x61, 0x6d, 0x62);
        a(uint(1));
        y = a(0);
        y = a(2**256);
        y = a(257);
        y = a(1.0 ** 43);
        y = a(1. + 3. - 1);
        y = a(uint.max);
        assert(y == 1000000, "Wrong");
        assert(y == 42, "Wrong");
        require(y == 40, "Wrong");
        require(y == 40, "Wrong");
        y = g(123434);
        y = g(25000);
    }
}
contract B{
    function b(uint x) public {
        (uint y) = a(x);
        y = a(y);
        y = a(3.1415);
        y = a(float(0x1p2047));


        bool z;
        z = x == 0;
        z = x == 0x2738;
        z = a(0xB588123);
        z = c(0xB588123);
        z = f(x * 0x8f5);
        z = f(float(0x8f5));
        z = f(411427102734894528000);

        c(uint(0));
        c(uint(0xCB4F0B00));
        c(uint(0x00000000000000000000000000000));
        c(uint(-1));
        c(uint(0xFFFFFFFFFFFFFFFF));
        c(uint(0xAAAAAAAAAAAAAAA));
        c(uint.max);
        require(c(0) == 0, "Wrong");
        require(c(1) == 0, "Wrong");
        uint y;
        c(2**256 - 1);
        y = c(2 ** 100);
        y = c(2**38);
        c(2**1000000000000000
