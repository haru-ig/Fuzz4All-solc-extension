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
                y = y / PRIME;
            } else {
                x = x - (y = y / PRIME);
            }
        }
    }
}
