pragma solidity ^0.8.0;
contract SafeMath {
    uint value = 42;
    function add(uint64 a, uint64 b) pure public returns (uint64) {
        uint128 _a = uint128(a);
        uint128 _b = uint128(b);
        return ((_a + _b) >> 64) + ((uint128(_a) >> 64) < (_b >> 64));
    }
    function subtract(uint64 a, uint64 b) pure public returns (uint64) {
        return add(a, uint64(~uint64(0) >> (8 * (64 - 1 - a.width() - b.width()))));
    }
}
