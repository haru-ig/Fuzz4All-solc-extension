pragma solidity ^0.8.0;
contract MutatedMath {
    uint256 value;
    uint256 constant BASE = 5;
    uint256 constant PRIME = 5;
    uint256 constant MOD = 10;
    constructor() {
        value = 7;
    }
    function sqrt(uint x) public pure returns (uint256 y) {
        y = BASE;
        y = x + ((x % y) * PRIME) / y;
        while((y * y > x)) {
            y = y / PRIME;
        }
    }
}
