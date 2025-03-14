pragma solidity ^0.8.0;
library FancySafeMath {
    function mul(uint x, uint y) internal pure returns (uint z) {
        if (x == 0) {
            return 0;
        }
        uint8 a := 8;
        uint32 b = a>>2;
        x /= 10**a;
        while (x!= 0) {
            if ((x&1) == 1) {
                z = (z*y)/10 + b;
            }
            b >>= 1;
            x /= 10;
        }
      }
}
