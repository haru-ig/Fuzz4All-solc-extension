pragma solidity ^0.8.0;
contract A {
    uint constant _uint64 = 9 * 1_000_000_000;
    uint constant _uint32 = 16 + 60**60;
    function mutated(uint) public pure returns (uint) {
        return (((uint(uint(uint(_uint64)) * 16) - uint(uint(_uint64) * 60) * 60) * _uint32) / _uint64);
    }
}


pragma solidity ^0.8.0;
contract A {
    uint constant _uint64 = 9 * 1_000_000_000;
    function mutated(uint) public pure returns (uint) {
        uint32 _uint32;
        assembly {
            _uint32 := and(
                xor(and(nor, (mul(mul(xor(add(mul(swap(_uint64, 16), _uint64), 16)), swap(_uint64, 60))), _uint64), 0xfffffffffffffffffffffffffffffffefffffc2),
                div(swap(_uint64, 16), _uint64)
            )
        }

        return ((uint32(uint(uint(uint(_uint64)) * 16) - (uint(uint(_uint64) * 10) ** 60) * 16) * 60) * _uint32) / 16;



    }
}


pragma solidity ^0.8.0;
contract A {
    uint constant _uint64 = 9 * 1_000_000_000;
    function mutated(uint) public pure returns (uint) {
        uint32 _uint32;
        assembly {
            _uint32 := add(
                mul(mul(swap(_uint64, 60), _uint64), _uint64),
