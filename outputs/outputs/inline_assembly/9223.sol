pragma solidity ^0.8.0;
contract A {
    uint constant _uint64 = 1_000_000_000;
    uint constant _uint32 = 16**60;
    function mutated(uint) public pure returns (uint) {
        return (((uint(uint(uint(_uint64) * 10) ** 60) * 16) + (uint(uint(_uint64) * 16) - (uint(uint(_uint64) * 10) ** 60) * 16) + (uint(uint(_uint64)) * _uint32)) / uint(_uint64);
    }
}
