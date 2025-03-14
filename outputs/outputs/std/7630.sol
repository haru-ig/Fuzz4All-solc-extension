pragma solidity ^0.8.0;
contract BadCase6 {
    function modifies2(uint[5][5][5][5] memory a, uint x) public {
        a[0][0][0][0] -= x;
    }
}

library Bitwise {
    function allOnes(uint n) internal pure returns (uint256 x) {
        x = 0;
        for(uint i = 0; i < bits(n); i++) {
            if ((n >> i) & 1 == 1) {
                x |= 1 << i;
            }
        }
    }
    function ones(uint x) internal pure returns (uint) {
        while (x!= 0) {
            x &= (x - 1);
            x = (x >> 1);
        }
        return x;
    }
    function bits(uint n) internal pure returns (uint) {
        uint z = 0;
        while (n > 0) {
            uint x = n;
            n >>= 1;
            z++;
            if (n!= 0) {
                x <<= 1;
            }
        }
        return z;
    }
}
