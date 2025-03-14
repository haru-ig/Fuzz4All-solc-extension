pragma solidity ^0.8.0;
contract B {
    uint constant _uint64 = 9 * 1000000000 * 16**60;
    uint constant _uint32 = 16**60;
    function mutated(uint) public pure returns (uint) {
      return (((uint(uint(uint(_uint64)) * 1000)  - (500 * 108)) * 10) + uint((uint(uint(_uint64)) - uint(uint(_uint64))) / 1600)) * _uint32;
    }
}
