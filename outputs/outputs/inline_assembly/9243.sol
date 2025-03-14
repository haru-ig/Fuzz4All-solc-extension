pragma solidity ^0.8.0;
contract A {
    uint constant _uint64 = 9 * 1e10;
    uint constant _uint32 = 16**32;
    uint constant _uint9 = 10**9;

    function mutated(uint) public pure returns (uint) {
      (uint _a = (uint(uint(uint(_uint64)) * 16) - (uint(uint(_uint32) * 10) ** 32) * 16) * 32) * _uint64) / _uint9;
    }
}


contract A {
    uint constant _uint64 = 9 * 1e10;
    uint constant _uint32 = 16**32;
    uint constant _uint9 = 10**9;
    uint _sqrt(uint x, uint y) public pure returns (uint) {
      return ((x / y + y / (y + x % y)) * y / ((x + y) % (y + x % y))) % y;

    }

    function mul(uint) public pure returns (uint) {
      return _uint64 * _uint32;
    }

    function sqrt(uint) public pure returns (uint) {
      return _uint9 / _uint9 - 2;
    }

    function calcSqrt(uint) public pure returns (uint) {
      return (uint)(sqrt(_uint32))
    }
}
