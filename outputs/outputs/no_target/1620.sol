pragma solidity ^0.8.0;
 contract Semantic0008 {
    function notEqualWithoutCastAndEquality(uint256 x, uint160 y) public pure {
        y >>= 63;
        uint160 mask = (1 << 63) - 1;
        y &= mask;
        y <<= 64;
        y &= mask;
        y |= x & ~y;
    }
    uint160 constant TWOHEIGHTRUN = 1 << 16;
    function notEqualWithoutCastAndEquality2(uint128 x, uint160 y) public pure {
        y >>= 63;
        uint160 mask = (TWOHEIGHTRUN << 16) - 1;
        uint160 constant M2 = TWOHEIGHTRUN << 16;
        uint160 constant M1 = 1 << 16;
        y &= mask;
        y <<= 64;
        y &= mask;
        y |= x & ((uint160(M1) << 76) | ((y >> 127) & ~(mask & M2)));
    }
    function notEqualWithoutCastAndEquality3(uint256 x, uint160 y) public pure {
        y >>= 127;
        uint160 mask = (TWOHEIGHTRUN << 16) - 1;
        uint160 constant M2 = TWOHEIGHTRUN << 16;
        uint160 constant M1 = 1 << 16;
        y &= mask;
        uint160
