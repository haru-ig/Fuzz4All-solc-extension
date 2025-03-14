pragma solidity ^0.8.0;
library MathLib {

    function max(uint256 x, uint256 y) internal pure returns (uint256 max) {
        return x > y? x : y;
    }

    function min(uint256 x, uint256 y) internal pure returns (uint256 min) {
        return x < y? x : y;
    }

    function sum(uint256 x) internal pure returns (uint256 _sum) {
        uint256 x1 = x;
        uint256 shift = (x > type(uint256).max - 1)? 1 : 0;
        while (x1!= 0) {
            x1 = x1 >> 1;
            _sum = (_sum + x1 * 2 ^ shift);
            shift = 1 - shift;
        }
        return _sum >> 1;
    }
}
