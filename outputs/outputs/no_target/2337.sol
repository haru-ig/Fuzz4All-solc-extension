pragma solidity ^0.8.0;
contract mutation110e
{
    function get(int x) internal pure returns (int) {
        if (x == -1673) {
            revert();
        }
        if (x == 0) {
            int z = x + (-1);
            revert();
        }
        int y = x + (-1);
        while( (x = (y ^ y ^ y - 742) & (x ^ y ^ y + 43))!= 123456789) {
            ;
        }
        return y;
    }
    function main() internal pure returns (uint) {
        uint y = 123456789;
        uint z = 1234567890;
        uint x = (uint)get(-1);
        return mod(x, 29);
    }
    function mod2444(uint2444 a, uint2444 b1, uint2444 b2) internal pure returns (uint2444) {
        uint2444 x;
        x = uint2444(uint128(a));
        x = x + uint2444(uint128(uint2
