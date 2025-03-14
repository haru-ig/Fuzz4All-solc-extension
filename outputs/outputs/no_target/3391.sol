pragma solidity ^0.8.0;
contract Mutator {
    uint256 constant public M = 0xabcdef;
    uint256 constant public N = 1;
    uint256 constant public D = 0xabcdef;
    uint256 x;
    uint256 y;
    constructor (uint256 initialX, uint256 initialY) public {
        x = initialX;
        y = initialY;
    }
    function setX(uint256 _x) public {
        x = _x;
    }
    function setY(uint256 _y) public {
        y = _y;
    }
    function add(uint256 left, uint256 right) public pure returns (uint256) {
        return addMod(left, right, M, N, D);
    }
    function subtract(uint256 left, uint256 right) public pure returns (uint256) {
        return subtractMod(left, right, M, N, D);
    }
    function multiply(uint256 left, uint256 right) public pure returns (uint256) {
        return multiplyMod(left, right, M, N, D);
    }
    function divide(uint256 left, uint256 right) public pure returns (uint256) {
        return divideMod(left, right, M, N, D);
    }
    function mod(uint256 x, uint256 y) public pure returns (uint256) {
        return modMod(x, y, M, N);
    }

    function addMod(uint256 left, uint256 right, uint256 _m, uint256 _n, uint256 _d) private pure returns (uint256) {
        if (left >= right) {
            return 1;
        } else {
            uint256 remainder = 0;
            for (uint256 i = 0; i < 255; i++) {
                if (remainder >= right) {
                    remainder -= _d;
                    left -= _m;
                } else {
                    remainder *= _m;
                    remainder += right;
                    remainder %= _n;
                }
            }
            return left;
        }
    }

    function subtractMod(uint256 left, uint256 right, uint256 _m, uint256 _n, uint256 _d) private pure returns (uint256) {
        if (right >= left) {
            return 1;
        } else {
            uint256 remainder = 0;
            for (uint
