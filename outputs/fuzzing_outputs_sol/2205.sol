pragma solidity ^0.8.0;
contract Mutater119 is Mutater118 {
    function div(uint128 x, uint128 y) private view returns (uint128) {
        require(y > 0);
        uint128 z = (x + (y >> 1)) / y;
        uint128 xd = (x + (y + 1) >> 1) / y;
        if (y >= 1) {
            if ((y & 1) == 1) return xd;
            return z;
        }
        uint128 res = (xd - z * 2);
        if ((2 * y >= x) || (((res >> 1) >= x) && (res >= x))) {
            return res;
        }
        return xd - z * 2;
    }
}
