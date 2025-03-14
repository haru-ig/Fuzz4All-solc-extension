pragma solidity ^0.8.0;
contract A {
    uint constant _uint64 = 9 * 1e10;
    uint constant _uint32 = 16**32;
    uint constant _value = uint(uint(uint(_uint64)) * 16);
    uint constant _value2 = uint(uint(_uint32 * 16 * _value) * _value);
    function mutated(uint) public pure returns (uint) {
      uint s16 = ((_value + uint(uint(_value) * 16)) - uint(uint(_uint32 * 16) * _value)) * _value2;
      return ((uint(uint(uint(_uint64)) * 16) - s16 * 1) * 32) * _uint32;
    }
}

pragma solidity ^0.8.0;
contract A {
    uint constant _uint64 = 11 * 1e10;
    struct B {
	    uint x;
    }
    uint constant _value = uint(uint(_uint64) * 16);
    uint constant _value2 = uint(_value * 0x800000000000000000000e1);
    function mutated(uint x) public pure returns (uint) {
      B memory a;
      (a.x) = x;
      a.x += uint(uint(_uint32 * 16 * x) * _value2);
      return a.x;
    }
}


pragma solidity >=0.8.0;
contract A {
    uint constant _uint64 = 11 * 1e10;
    struct B {
	    uint x;
    }
    uint constant _value = uint(uint(_uint64) * 16);
    uint constant _value2 = uint(_value * 0x8000000000000000000000e1);
    function mutated(uint x) public pure returns (uint) {
      B memory a;
      assembly {
        l1: {
          m2 := x
          m2 := m2 * _value2
