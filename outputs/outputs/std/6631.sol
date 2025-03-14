pragma solidity ^0.8.0;
contract Mutate67 {
    uint8[] public y;
    constructor () public {
        uint8 x;
        x = 1;
        y = [1, 2, 3];
        uint1 a = 1;
        a &= ~a;
    }
}

pragma solidity ^0.8.0;
contract Mutate68 {
    uint8[] public y;
    constructor () public {
        uint8 x;
        x = 1;
        y = [1, 2, 3];
        y[0] &= ~y[0];
    }
}

pragma solidity ^0.8.0;
library Mutate69 {
    uint64 x;
    uint64 z;
    uint64 y;
    uint64 w;
    uint64 u;


    function _multiply(uint64 a, uint64 b) private pure returns (uint64) {
        return a < b*256? a*b : a/b + a%b;
    }
    function _sqrt(uint64 a) private view returns (uint64) {
        if (a == 0) return 0;
        uint256 half = uint256(0.5);
        while (a > half) {
            half = half/2;
        }
        return half;
