pragma solidity ^0.8.0;
contract A {
    uint constant _uint64 = 9 * 1e10;
    uint constant _uint32 = 16**32;
    function mutated(uint) public pure returns (uint) {
      return ((uint(uint(uint(_uint64)) * 16) - (uint(uint(_uint64) * 10) ** 32) * 16) * 32) * _uint32;
    }
}
