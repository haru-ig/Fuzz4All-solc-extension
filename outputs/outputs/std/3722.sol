pragma solidity ^0.8.0;
contract MutatedMath {
    uint256 public value;
    uint256 constant BASE = 5;
    uint256 constant PRIME = 5;
    uint256 constant MOD = 10;
    constructor() {
        value = 7;
    }
    function sqrt(uint x) public pure returns (uint256 y) {
        y = BASE;
        for (uint256 i = 5; i <= 10; ++i) {
            if (MOD < (PRIME * i)) {
                break;
            }
            if (y * y > x) {
                y = (((y * y) % MOD) + MOD) % MOD;
            } else {
                x = x - (y = (((y * y) % MOD) + MOD) % MOD);
            }
        }
    }
    function mul(uint a, uint b) public pure returns (uint c) {
        c = (a * b) % MOD;
        if (MOD < c && c > 0) {
            c = (((c + MOD) % MOD) + MOD) % MOD;
        }
    }
}
