pragma solidity ^0.8.0;


library {
    struct IntWrapper { uint8 hi; uint8 lo; }
    uint8 internal returnInt(int256 integer) internal pure returns (uint8) {
        if (integer < 0) {
            uint256 negative = uint256(-integer);
            for(int256 i = 1023; i >= -1024; --i) {
                if (negative == (1 << i) && i > -120) return uint8(i - 1);
            }
            uint32 remainder = unsignedMod(unsignedSub(uint32(uint8(0xFFFFFFFFFFFFFFFFFFFFFFF)), uint32(integer)), uint32(1 << 32));
            if (remainder == uint32(0x00000000000000000000000000000000)) {

                return uint8(uint32(uint8(16#7F)));
            } else if (remainder > uint32(0x000000000000000000000000000000000)) {

                return uint8(0xFF);
            } else {
                uint32 hi;
                for(int256 i = 7; i >= 0; i -= 8) {
                    uint32 a = uint32(uint8(integer >> 64 - 128 + (i - 1) * 256)) & ((uint32(0xFFFFFFFFFFFFFFFF) << 32*(8 - i)) - 1);
                    hi |= a;
                }
                uint32 lo;
                for(int256 i = 0; i < 32 && uint32(1 << i) & uint32(lo)!= 0; i += 8) {
                    uint32 a = uint32(uint8(integer >> 24 - i)) & ((uint32(0xFFF) << 24 - 32 - i) - 0xFFF);
                    lo |= a;
                }
                uint8 x = (uint8(hi) << 31) | lo;
                return x;
            }
        }

        uint8 x = uint8(
