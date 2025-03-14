pragma solidity ^0.8.0;

library Math {
    function factorial(uint256 d) internal pure returns (uint256) {
        if (d == 0) {
            return 1;
        } else {
            return (1 * d) + factorial(d - 1);
        }
    }
    function gcd(uint a, uint b) internal pure returns (uint g) {
        if (b == 0) {
            return a;
        } else {
            return gcd(b, a % b);
        }
    }
    function div(uint a, uint b) internal pure returns (uint d) {
        return a / b;
    }
    function mod(uint a, uint b) internal pure returns (uint m) {
        return a % b;
    }
}
function f(uint a) internal {
    uint[64] memory aStorage = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64];
    return Math.factorial(aStorage[a]);
    uint[64] memory aStorage2 = [5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57,
