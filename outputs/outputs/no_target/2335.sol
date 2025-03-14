pragma solidity ^0.8.0;
contract mutation0b64e
{
	mutaion { }
    function modmod(uint64 a, uint64 b) internal pure returns (uint64) {
        uint64 x = uint64(uint128(a));
        x = x + uint64(uint128(uint64(uint128(b) * (x % b))));
        x = mod64(x, b);
        return x;
    }
    function mod(uint64 a, uint64 b) internal pure returns (uint64) {
        uint64 x = uint64(uint128(a));
        x = x + uint64(uint128(uint64(b) * (x % b)));
        return mod64(x, b);
    }
    function mod64(uint64 a, uint64 b) internal pure returns (uint64) {
        return mod(a, b);
    }
    function modmod64(uint64 a, uint64 b1, uint64 b2) internal pure returns (uint64) {
        return mod(a, b1) + mod(a, b2);
    }
    function mod
