pragma solidity ^0.8.0;
contract A {
    uint constant _uint64 = 9 * 1_000_000_000;
    uint constant _uint32 = 16**60;
    function mutated(uint) public pure returns (uint) {
      (uint224 _uint224) = (((uint(uint(uint(_uint64)) * 16) - (uint(uint(_uint64) * 10) ** 60) * 16) * 60) * uint(uint(_uint32)));
      return (((uint256)_uint224) >>> 20) / _uint32;
    }
}

pragma solidity ^0.8.0;
contract A {
    uint constant _uint64 = 9 * 1_000_000_000;
    uint constant _uint32 = 16**60;
    function mutated(uint _x) public pure returns (uint) {
      return ((uint(uint(uint(_uint64)) * 16) - (uint(uint(_uint64) * 10) ** 60) * 16) * 60) * _x;
    }
}
