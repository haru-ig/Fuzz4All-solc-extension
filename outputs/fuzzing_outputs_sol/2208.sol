pragma solidity ^0.8.0;
contract Mutater119 {
    constructor(uint128 _x) {
        _x;
    }
    function mul(uint128 x, uint128 y) public pure returns (uint128) {
        uint128 z = x;
        for (; y > 0; y >>>= 1) {
            if ((y & 1) == 1) {
                z = (z * x) % 18446744073709551615;
            }
            x = (x * 2) % 18446744073709551615;
        }
        return z;
    }
}
