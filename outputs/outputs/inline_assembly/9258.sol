pragma solidity ^0.8.0;
contract A {
    uint constant _uint64 = 9 * 1e10;
    event change(uint y);
    function mutatedBy(uint) public pure returns (uint) {
      uint a = uint(uint(_uint64) * 16) + (uint(uint(_uint64) * 1e32));
      uint x = (uint(uint(_uint64) * 16) + (uint(uint(_uint64) * 1e32)) / (uint(uint(_uint64) * 10) ** 22));


      for (uint i = 0; i < 1e32; i++) {
        uint _x = a + i;
        uint y = uint(uint(_uint64) * x) - (uint(uint(_uint64) * x) * 32) + (uint(uint(_uint64) * _x) * 16);
        uint z = uint(uint(_uint64) * x) * (1000000000) + (uint(uint(_uint64) * _x) * (100000000));
