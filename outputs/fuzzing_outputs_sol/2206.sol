pragma solidity ^0.8.0;
contract Mutater131 {
    function div(uint result, uint128 x, uint128 y) public pure returns (uint) {
        uint128 z = (x + (y >> 1)) / y;
        uint128 xd = (x + (y + 1) >> 1) / y;
        if (y >= 1) {
            if ((y & 1) == 1) return xd;
            return z;
        }
        return xd - z * 2;
    }
}
