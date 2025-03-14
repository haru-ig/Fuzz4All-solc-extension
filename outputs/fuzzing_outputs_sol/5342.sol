pragma solidity ^0.8.0;
contract mapMutated7
{
    mapping (uint => uint) x;
    uint w;
    uint y;
    constructor() {}
    function f() public{
        x[10] = 127;
        x[y] = 7;
        unchecked {
            w = 0xFFFFFF1;
            w >>= 16;
            y = w & 16383;
            return (x[y]) << 3;
        }
    }
    function g() public{
        x[10] = 1601;
        uint32 z = 0;
        unchecked{

            unchecked{
                z = 0x16384;
            }

            z >>= 16384;

        }

        z = z + (x[(z >> 16)] * 2147483647);
        y = x[((z) >> 16) & 16383];
    }
    function h() public{
        x[10] = 1601;
        uint32 z;
        unchecked {
            unchecked {

                z >>= 1;
                z >>= 32;

            }

            z >>= 16384;
            z >>= 16;

            z >>= 16;
            z >>= 8;
            y = x[(z)] & 16383;
        }
    }
}
