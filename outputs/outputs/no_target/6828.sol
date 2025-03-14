pragma solidity ^0.8.0;
contract TestMutated729 {
    function test() public {
        uint x = 0xffffffffffffffff;
        uint y = 0x6000000000000000ffffffff;
        uint z0 = 0x00000001130ac000000;
        uint z1;
        uint z2;
        uint z3;
        uint z4;
        uint s0;
        uint s1;

        safeSub(0xffffffffffffffff, 0x1000000000000000fffffffe00000001, x);
        safeSub(0x0001000000000000ffffffff, 0x6000100000000000fffffffe0000001, x);
        s1 = safeSub(0x1000000000000000fffffffe0000001, x);
        s0 = 0x1000000000000001;
        z1 = safeSub(0x1000000000000000fffffffe0000001, x);
        z0 = safeSub(0xffffffffffffffff, 0x0100000000000000ffffffff, x);
        safeSub(0xffffffffffffffff, x, s1);
        s1 = safeSub(safeAdd(0xffffffffffffffff, 1), 0xfffffffffffffffe, s1);
        z1 = safeSub(SafeMath.add33(0xffffffffffffffff, s1, s1, s1), 1, s1);
        safeSub(SafeMath.sub01(SafeMath.sub01(z0, x), s1), 0xfffffffffffffffe, s1);
        z1 = safeSub(SafeMath.sub33(SafeMath.sub33(0xfffffffffffffffe, 1, 0xfffffffffe, s1)), 1, s1);
        s1 = safeSub(SafeMath.add8(s1, Safe
