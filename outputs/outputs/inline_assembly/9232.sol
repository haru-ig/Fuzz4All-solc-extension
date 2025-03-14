pragma solidity ^0.8.0;
contract SemanticEquivalence {
    uint constant _uint64 = 9 * 10**60;
    uint constant _uint32 = 16**32;
    function mutated(uint) public pure returns (uint) {
      return ((uint(uint(uint(_uint32)) * 16) - (uint(uint(_uint64) * 10) ** 60) * 16) * 60) * _uint32;
    }
}
