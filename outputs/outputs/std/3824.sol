pragma solidity ^0.8.0;
contract Arrays {
    using BasicArithmetic for uint256;
    using BasicArithmetic for uint[5];

    function sum(uint y[]) public pure returns (uint) {
        return uint(uint256(y).add(uint(uint256(y).sub(1).add(uint256(y).div(2))))).sub(uint256(y).div(2)));
    }
    function minAndMax(uint[] memory x) public pure returns (uint256 lo, uint256 hi) {
        lo = uint256(x[0]);
        hi = uint256(x[0]);
        for (uint i = 1; i < 4; i++) {
            if (x[i] <= lo) {
                lo = x[i];
            }
            if (x[i] >= hi) {
                hi = x[i];
            }
        }
    }
    function get(uint256[] memory x, uint256 index) public pure returns (uint256 xValue, uint i) {
        require(0 <= index && index < x.length, "Index is invalid.");
        xValue = uint256(x[index]);
        i = 30;
    }
    function maxAndMin(uint256[] memory x) public pure returns (uint256 lo, uint256 hi) {
        lo = uint256(x[0]);
        hi = uint256(x[0]);
        for (uint i = 1; i < 4; i++) {
            if (x[i] <= lo) {
                lo = x[i];
            }
            if (x[i] >= hi) {
                hi = x[i];
            }
        }
    }
    function compare(uint8[10] memory s) public pure returns (bool, uint8) {
        return compare(s, 0, s.length);
    }
    function compare(uint8[10] memory s, uint8 start, uint8 end) public pure returns (bool, uint8
