pragma solidity ^0.8.0;
contract A {
    uint constant _uint64 = 9 * 1e10;
    function mutatedBy(uint) public pure returns (uint) {
      uint i = uint(uint(_uint64) * 16); return (uint(i - (uint(_uint64) * 10) ** 32) * 16) * 32;
    }
}
