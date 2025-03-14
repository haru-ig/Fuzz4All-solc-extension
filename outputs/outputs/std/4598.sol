pragma solidity ^0.8.0;
library MultiPrecision {
    using SafeMath for uint;

    uint constant ONE = 10 ** uint(256);
    uint constant HALF_EVEN = 10 ** uint(224);
    uint constant HALF_ODD = 10 ** uint(112);
    uint constant HALF_OVERFLOW = 10 ** uint(257);
    uint constant MAX_EXPONENT = 10 ** uint(257);
    bool constant EXPONENT_MIN_MATCHER = true;
    uint constant PRECISION = 10 ** uint(8);
    function maxExpInt(uint256 value) public pure returns (uint256) {
        uint256 a = value;
        while (a >= HALF_EVEN) {
           a /= 2;
        }
        while (a >= HALF_ODD) {
            a /= 2;
        }
        while (a >= HALF_OVERFLOW) {
            a /= PRECISION;
        }
        return a;
    }
    function setPrecision(uint256 value) public pure {
        PRECISION = value;
    }
    function minValueExp(uint256 value) public pure returns (uint256) {
        if (value == MAX_EXPONENT) {
            return MINUS_INFINITY;
        }
        uint256 exp = maxExpInt(value);
        uint256 expMin = exp.sub(uint256(1));
        value = exp.add(expMin);
        return value;
    }
    function minExpForInt(uint256 value) public pure returns (uint256) {
        uint256 exp = maxExpInt(value) + 1;
        return exp;
    }
    function maxIntValue(uint256 value) public pure returns (uint256) {
        uint256 exp = maxExpInt(value);
        uint256 expMinusOne = exp.sub(uint256(1));
        return value.sub(expMinusOne.mul(exp));
    }
    function pow(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 exp = maxExpInt(b);
        uint256 result = ONE;
        while (exp > 0) {
            if (exp % 2 == 1) {
                result = result.mul(a);
            }
            a = a.mul(a);
            exp = exp / 2;
        }
        return result;
    }
    function minValueIntExpFor(uint25
