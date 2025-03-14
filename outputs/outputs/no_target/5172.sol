pragma solidity ^0.8.0;
library MyMath {
    function maxUint8(uint8 x, uint8 y) internal pure returns (uint8 z) {
        if (y == 0) return x;
        (y, z) = (x, x);
    }
    function minUint8(uint8 x, uint8 y) internal pure returns (uint8 z) {
        (uint8 a, uint8 b) = (x, y);
        if (b == 0) return maxUint8(a, 0x55);
        if (b > a) (uint8 a, uint8 b) = (b, a);
    }
    function maxUint16(uint16 x, uint16 y) internal pure returns (uint16 z) {
        if (y == 0) return x;
        (y, z) = (x, x);
    }
    function minUint16(uint16 x, uint16 y) internal pure returns (uint16 z) {
        if (y == 0) return maxUint16(x, 0x55C427DF);
    }
    function maxUint32(uint32 x, uint32 y) internal pure returns (uint32 z) {
        if (y == 0) return x;
        (y, z) = (x, x);
    }
    function minUint32(uint32 x, uint32 y) internal pure returns (uint32 z) {
        if (y == 0) return maxUint32(x, 0xFFFFFFFF);
    }
    function maxUint64(uint64 x, uint64 y) internal pure returns (uint64 z) {
        if (y == 0) return x;
        (y, z) = (x, x);
    }
    function minUint64(uint64 x, uint64 y) internal pure returns (uint64 z) {
        if (y == 0) return maxUint64(x, 0xFFFFFFFFFFFFFFFF);
    }

    function maxSafeUint256(uint256 x, uint256 y) internal pure returns (uint256 z) {
        if (y == 0) return x;
        (y, z) = (x, x);
    }
    function minSafeUint256(uint256 x, uint256 y) internal pure returns (uint256 z) {
        if (y == 0) return maxSafeUint256(x, 0xFFFFFFFF);
    }
    int256 myMathInt256(int256 lhs, int256 rhs) internal pure returns (int256) {
        if (rhs == signed(0) && ((int128(0)
