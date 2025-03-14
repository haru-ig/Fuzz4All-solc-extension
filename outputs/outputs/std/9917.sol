pragma solidity ^0.8.0;
library Bitwise {
    function toPowerOfTwo(uint x) internal pure returns (uint2) {
        if (Bitwise.isPowerOfTwo(x)) {
            return x;
        } else {
            uint2 powerx = 0;
            while (x  > 1) {
                x >>= 1;
                powerx++;
            }
            return powerx;
        }
    }
}
