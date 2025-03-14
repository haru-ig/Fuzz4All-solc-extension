pragma solidity ^0.8.0;
contract A {
    uint constant _uint64 = 9 * 1_000_000_000;
    uint constant _uint32 = 16**60;
    function mutated(uint) public pure returns (uint) {
        require(1000000000 ** 60) > uint(uint(uint(_uint64)) * 16);
        return (((uint(uint(uint(_uint64)) * 16) - (uint(uint(_uint64) * 10) ** 60) * 16) * 60) * _uint32) / 16;
    }
}
