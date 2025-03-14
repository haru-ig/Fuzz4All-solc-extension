pragma solidity ^0.8.0;
contract A {
    bytes32 constant _bytes32 = 9 * 1_000_000_000;
    bytes32 constant _bytes322 = 0x1_2_3_4_5_6_7_8_1;
    uint constant _uint64 = 9 * 1_000_000_000;
    uint constant _uint32 = 16**60;
    function simple(uint) public pure returns (uint) {
        return uint(uint(_bytes32) * 16) - uint(uint(_bytes32) * 60 * 60 * 10) ** 60 * 16 + uint(uint(_bytes32) * 365 * 10) ** 60 * _uint32;
    }
    function mutated(uint) public pure returns (uint) {
        return ((uint(_bytes32)) * uint(uint(_bytes32) * 10) ** 60) * _uint64 / uint(uint(_bytes322));
    }
}
