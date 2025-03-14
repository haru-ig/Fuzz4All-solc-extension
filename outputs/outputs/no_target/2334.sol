pragma solidity ^0.8.0;
contract mutation0b64m
{
    function modmod(uint64 a, uint64 b) internal pure returns (uint64) {
        uint64 x = uint64(uint128(a));
        x = x + uint64(uint128(uint64(uint128(b) * ((x % b) * 37) - 9388) % b)));
        x = mod64(x, b);
        return x;
    }
}
