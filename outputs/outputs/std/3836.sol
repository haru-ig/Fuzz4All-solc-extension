pragma solidity ^0.8.0;
contract IntDivMod {
    struct Number {
        uint256 numerator;
        uint256 denominator;
    }
    function divide(uint a, uint b) public pure returns (uint256 quotient) {
        Number memory result;

        uint256 numerator = min(a, b);
        result.numerator = divideTrunc(a, b);
        result.denominator = b;

        if (quotient == 0) revert();
        if (a < b) {
            result.numerator = xdivTrunc(a, b);
            result.denominator = b;
            quotient = min(numerator, result.numerator);
        } else if (a == b) {
            quotient = 0;
        }
    }
    function divideTrunc(uint a, uint b) internal pure returns (uint256 quotient) {

        uint256 quotientTrunc = divideTrunc(a, cdivTrunc(b, xgcdTrunc(a, b)));
        if (quotient == 0) revert();
        if (quotient > 2**uint256(28)) revert();
        if (quotient + quotientTrunc > 2**256) revert();
        if (quotientTrunc + quotient > 2**uint256(28)) revert();

        return uint256(quotientTrunc);
    }
    function xgcdTrunc(uint a, uint b) internal pure returns (uint256 x) {
        if (b == 0) {
            x = a;
            return;
        }
        xgcdTrunc(b, a % b);
    }
    function divide(uint a, uint b) public pure returns (uint) {
        return divideTrunc(a, b)._numerator / divideTrunc(_divisor(a, b), b)._denominator;
    }
    function _dividend(uint a) internal pure returns (uint) {
        if (a == 0) throw;
        for (uint i = 31; i >= 0; --i) {
            if ((a & ((1 << i) - 1))!=
