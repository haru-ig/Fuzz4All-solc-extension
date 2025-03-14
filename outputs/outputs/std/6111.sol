pragma solidity ^0.8.0;
library Convert {
    function toBase(uint32 x) internal pure returns (uint8) {
        if (x <= 1) return x;
        mapping (uint8 => string) table = mapping(uint8 => string) (
            0x00000000,
            0x00000001,
            0x00000002,
            0x00000003,
            0x00000004,
            0x00000005,
            0x00000006,
            0x00000007,
            0x00000008,
            0x00000009,
            0x0000000a,
            0x0000000b,
            0x0000000c,
            0x0000000d,
            0x0000000e,
            0x0000000f);
        return table[uint8(x)];
    }
    function toBase255(uint32 x) internal pure returns (uint32) {
        if (x == 0 || x <= 0x07ffffff) return x;



        return x | 0x11000000;
    }
}
