pragma solidity ^0.8.0;
contract mutation8k
{
    function modmod(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 x = uint256(uint128(a));
        x = x + uint256(uint128(uint256(a) * (x % b)));
        x = uint256((uint64(uint128(x)) % b));
        return x;
    }
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 x = uint256(uint128(a));
        x = x + uint256(uint128(uint256(b) * (x % b)));
        return uint256((uint64(uint128(x)) % b));
    }
    function mod64(uint256 a, uint256 b) internal pure returns (uint256) {
        return mod(a, b);
    }
    function modmod64(uint256 a, uint256 b1, uint256 b2) internal pure returns (
