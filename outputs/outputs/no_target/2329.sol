pragma solidity ^0.8.0;
contract mutation27m
{
    function modmod(uint64 a, uint64 b) internal pure returns (uint64) {
        uint192 x = uint192(uint256(uint128(a)));
        x = x + uint64(uint128(uint192(uint64(uint192(b) * (x % b)))));
        uint64 y = modmod64(x, 10000000000000000000000000, b);
        return y;
    }
    function mod64(uint64 a, uint64 b) internal pure returns (uint64) {
        uint64 x = uint64(uint128(a));
        x = x + uint64(uint128(uint64(b) * (x % b)));
        return mod64(x, b);
    }
    function modmod64(uint64 a, uint64 b1, uint64 b2) internal pure returns (uint64) {
        uint64 x;
        x = uint64(uint128(a));
