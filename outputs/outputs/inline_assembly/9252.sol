pragma solidity ^0.8.0;
contract A {
    uint constant _uint64 = 9 * 1e10;
    uint constant _one = 1;
    function mutatedBy(uint) public pure returns (uint) {
      uint i = uint(_one) * uint(_uint64) / 16;
      return uint(_one) * (int(i) - int(int(_uint64) * 10) ** 32)   * int(_one)   * int(_uint64) * 16   * int(_uint64);
    }
}
