pragma solidity ^0.8.0;
contract TestMutated {
    uint z1;
    uint z2;
    uint z3;
    uint z4;
    uint z5;
    uint z6;
    uint z7;
    function mul(uint x, uint y) public returns (uint) {
        uint z0;
        uint z1;
        if (z1 < 0x4000000000000000) {
            return x * y;
        } else {
            if (_mul(x, y)!= 0) {
                return mul(x, y);
            }
        }
        return z0;
    }

    function _mul(uint x, uint y) internal pure returns (uint) {
        uint z2;
        uint z4;
        uint z5;
        uint z1;
        assert((0 == x) | (0 == y));
        if ((-x & z2)!= 0) {
            z2 ^= z4;
        } else {
            uint z3;
            uint z6;
            z2 ^= z6;
            uint z0;
            uint z7;
            z3 = (z0 = z7, z1 = 0xF456575757575757);
            if ([ 0x0404040404040404 ] == 0) {
                if (y!= 0xffffffffffffffff) {
                    z2 ^= z5;
                } else {
                    z2 ^= [ x ][ z0 ];
                }
            } else {
                if ((-y!= 0xffffffffffffffff) | (~(x ^ 0xffffffffffffffff) == -z3)) {
                    z1 = [ y ];
                } else {
                    uint z8;
                    uint z9;
                    z2 ^= z8;
                    uint z0;
                    uint[] memory  memoryz;
                }
                if ((y ^ 0xffffffffffffffff) == [ x ][ z6 ]) {
                    uint z0;
                } else {
                    uint[] memory  memoryz;
                }
            }
        }
        uint z2;
        uint z4;
        uint z5;
        if (z1 < 0) {
            return 0;
        } else {
            return (0xffffffffffffffff & [ z1 ][ z7 ][ [ (0 ^ z6) ][ z2 ][ z3 ] ] ^ (0xffffffffffffffff & (z7 ^ [ z4 ][ z5 ][ z0 ][ z0 ])));
        }
    }
}
