pragma solidity ^0.8.0;
contract A {
    uint constant _uint32 = 16**60;
    uint constant _uint64 = 1_000_000_000;
    function mutated(uint) internal pure returns (uint) {
        return ((((uint(uint(uint(uint(uint(uint(uint(uint(1_000_000_000)))))) * 16) * 60) / _uint32);
    }
}
