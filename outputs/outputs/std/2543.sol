pragma solidity ^0.8.0;
contract ModificationTesting {

    function modify0_a(uint x) public {
        uint160 x2 = uint160(x);
        x2 = x2;
    }
    function modify1_g(uint160 x) public {
        uint160 x2 = uint160(x);
        x2 += uint160(x);
        x2 /= uint160(x);
        x2 %= uint160(x);
    }
    function modify2_d(uint160 x) public {
        uint160 x2 = uint160(x);
        x2 *= uint160(x);
        x2 >>= uint160(x);
        x2 *= uint160(x);
    }
    function modify3_d(uint x) public {
        uint160 x2 = uint160(x);
        x2 /= uint160(x) + uint160(x);
        x2 <<= uint160(x) & uint160(-1);
        x2 >>= uint160(x) ^ uint160(0);
    }
}
contract BitshiftTesting {

    function shift0_d(uint x) public {
        uint160 x2 = uint160(x);
        uint160 x3 = x2 >> 7;
        uint x4;
        x4 <<= 6;
        x4 >>= 6;
        x4 |= x3;
        uint x5;
        uint x6;
        x2 >>= 9;
        x2 >>= 8;
        x6 = uint160(x) - x2;
        x2 >>= 19;
        x2 <<= 18;
        x2 |= x5;
        uint x8;
        uint x9;
        uint x10;
        if (x >= 0) {
            x2 >>= 8;
        }
