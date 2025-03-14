pragma solidity ^0.8.0;
contract MutatedMultiprecision {
    uint256 public value;
    uint256 constant BASE = 5;
    uint256 constant PRIME = 5;
    uint256 constant MOD = 10;
    constructor() {
        value = 7;
    }
    function sqrt(uint x) public pure returns (uint256 y) {
        y = BASE;
        uint256 precision = BASE + 1;
        while (0 < precision--) {
            uint256 d = precision;
            if (0 < d) {
                d = (uint256(1) << d) + 1;
            }
            uint256 z = (((d * 10 * (y = (y >> (0 < d? (0 < (y * y) % MOD) : (y += ((y ^ PRIME) >> (1 < d? (1 < y) % MOD) : 0)))) % (MOD * 10)) + ((MOD * 10) * 10)) % (MOD * 10));
            y >>= z;
        }
    }
}
