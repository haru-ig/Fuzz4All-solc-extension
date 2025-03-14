pragma solidity ^0.8.0;
contract mutation0b36m
{
    function modmod(uint64 a, uint64 b) internal pure returns (uint64) {
        uint64 x = uint64(uint128(mod(a, b)));
        x = x + uint64(uint128(uint64(uint128(b) * (x % b))));
        return mod64(x, b);
    }
}
