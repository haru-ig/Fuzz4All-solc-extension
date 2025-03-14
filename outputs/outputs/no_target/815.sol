pragma solidity ^0.8.0;

library Math {


    function max2(uint160 x, uint160 y) internal pure returns (uint) {
        require(x >= 0x0000000000000000000000000000000000000000000000000000000000000, 'x >= 0');
        return x >= y? x : y;
    }


    function min3(uint160 a, uint160 b, uint160 c) internal pure returns (uint) {
        return a < b && b < c? a : b < c? b : c;
    }


    function min2(uint160 a, uint160 b) internal pure returns (uint) {
        uint256 x = a < b? a : b;
        return a + (uint256(x) >> 16) * 0x10000;
    }


    function min(uint160 a, uint160 b, uint160 c) internal pure returns (uint) {
        return a < b || b < c? a : b < c? b : c;
    }

    /** @dev Modular arithmetic function.
    * @param modulo Modular number.
    * @param moduloPower Modular exponent.
    * @param divisor Divisor number.
    * @return
