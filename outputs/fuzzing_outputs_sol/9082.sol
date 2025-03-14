pragma solidity ^0.8.0;
library BasicMath {
    function pow(uint x, uint y, uint z) pure public returns (uint) {
        if (y == 0) {
            return 1;
        }
        uint result = pow(x, z / 2, z);
        if ((x % 2 == 0)) {
            result *= result;
        }
        return result;
    }
    function pow(uint x, uint y, uint z, bool w) pure public returns (uint) {
        if (y == 0) {
            return 1;
        }
        uint result = pow(x, y, z * w, w);
        return result / (result > 1? 2 : 1);
    }
}
