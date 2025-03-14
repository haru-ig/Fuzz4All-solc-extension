pragma solidity ^0.8.0;
contract mutation0b64m
{
    function modmod(uint64 a, uint64 b) internal pure returns (uint64) {
        uint64 x = uint64(uint128(a));
        x = x + uint64(uint128(uint64(uint128(b) * (x % b))));
        return mod(x, b);
    }
    function mod(uint64 a, uint64 b) internal pure returns (uint64) {
        uint64 x = uint64(uint128(a));
        x = x + uint64(uint128(uint64(b) * (x % b)));
        return mod(x, b);
    }
    function mod64(uint64 a, uint64 b) internal pure returns (uint64) {
        return mod(a, b);
    }
    function modx(uint64 a, uint64 b) internal pure returns (uint64) {
        return (a % b) + b;
    }
    function modmod(uint64 a, uint64 b1, uint64 b2) internal pure returns (uint64) {
        return mod(
