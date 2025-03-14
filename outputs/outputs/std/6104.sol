pragma solidity ^0.8.0;
contract TestMath {
    uint32 x;
    function sqrt(uint32 a) public pure returns (uint32) {
        uint r1 = a;
        uint32 x1 = (1 << 27);
        uint32 x2 = (1 << 22);
        uint32 x3 = (1 << 19);
        x = a;
        while ((r1 >> 1) > 0) {
            r1 = (uint(r1 >> 1) + a) >> 1;
            x = (r << 1) + x1/r1;
            x1 = x2 - x1*r2*(((r2 >= a)) & r1 < x2);
        }
        return x;
    }
    function square(uint32 a) public pure returns (uint32) {
        return (a << 1) + (a & 1);
    }
    function modular(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 c = uint256(a);
        while (b > 0) {
            if (b & 1 == 1) {
                c = ((c * c) % b) % b;
            }
            b >>= 1;
            a = ((a * a) % b) % b;
        }
        return c;
    }
}
