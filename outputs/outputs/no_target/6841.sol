pragma solidity ^0.8.0;
contract TestMutated729 {
    using libMutants for uint19;
    uint19 x = 0;
    function f_mut(uint19 y) public pure {
        uint19 a = x + y;
        uint19 z = 0;
        if (a <= 0xF) {
            uint19 b = 0xF + y;
            x = x + 1;
            bool b1;
            uint19 z1;
            bool z2;
            bool z3;
            uint19 c = 5;
            uint19 a2 = 0;
            a2 = 0;
            if (a <= 0xF) {
                uint19 a3 = 0 + 0;
                x = f_mut(y);
                c = 5 + 0;
                s(y);
                a2 = 2 * 0;
                x = a + 0;
            } else {
                s(y);
                a2 = 2 * 0;
            }
            bool c1;
            uint z4 = f_mut(a);
            bool b2 = b <= 0x9;
        } else {
            uint19 b;
            x = 0x1312 + y;
        }
        if (a <= 0x10) {
            uint z6 = x + a2;
            bool c3 = b <= 0x1A;
            a2 = 2 * a;
        } else {
        }
        if (z <= 0x11) {
            uint z7 = b <= a2;
        } else {
        }
        uint a3 = 0x3A3 + 0x0c;
        uint19 b2 = a <= 0x1F;
        if (z <= 0x15) {
            uint19 a4;
            bool b3 = z >= a3;
            if (a > 0) {
                uint c4 = a <= 0x15;
                a4 = b2 + 0x13;
            } else {
                uint19 a4 = 0;
            }
            a3 = z - x;
            uint c5 = x <= 0x10;
        } else {
        }
    }

    function mul(uint x, uint y) public pure returns (uint) {
        uint
