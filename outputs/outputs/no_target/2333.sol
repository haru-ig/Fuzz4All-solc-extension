pragma solidity ^0.8.0;
contract mutation0b64m363
{
    function _modmod(uint64 a, uint64 b) internal pure returns (uint64) {
        uint64 x = uint64(uint128(a));
        x = x + uint64(uint128(uint64(uint128(b) * (x % b))));
        return mod(x, b);
    }
    function mod(uint64 a, uint64 b) internal pure returns (uint64) {
        uint64 x = uint64(uint128(a));
        x = x + uint64(uint128(uint64(uint128(a) * (x % uint160(b))))));
        return mod(x, uint160(b));
    }
}
