pragma solidity ^0.8.0;
contract A {
    uint constant _uint64 = 123;
    uint constant _uint32 = 16**60;
    function mutated() public pure returns (uint) {
        return (((uint(uint(uint(_uint64)) * 16) - (uint(uint(_uint64) * 10) ** 60) * 16) * 60) * _uint32) / 16;
    }
}
