pragma solidity ^0.8.0;
contract Array {
  function add(uint8[] memory a, uint8[] memory b) public pure returns (uint8[] memory) {
    uint8[] memory t = new uint8[](a.length + b.length);
    for (uint i = 0; i < a.length; i++) {
      t[i] = a[i];
    }
    for (uint i = 0; i < b.length; i++) {
      t[a.length + i] = b[i];
    }
    return t;
  }
  function addMod(uint8[] memory a, uint8[] memory b) public pure returns (uint32[] memory) {
    uint32[] memory t = new uint32[](a.length + b.length);
    for (uint i = 0; i < a.length; i++) {
      t[i] = a[i];
    }
    for (uint i = 0; i < b.length; i++) {
      t[a.length + i] = b[i];
    }
    return t;
  }
}
