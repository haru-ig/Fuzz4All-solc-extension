pragma solidity ^0.8.0;
contract Fallback {
  function badCall(uint i, uint j) pure public returns (uint, bytes memory) {
    uint addr = 0x1111111111110000000000000000000000000000000000000000000000000000;
    uint x = uint8(uint64(addr));
    bool isEqual = i == x;
    bool isLessThan = x <= j;
    uint result;
    if (cond) {
      j = j + 1;
    }
    result = j;
    return (result, abi.encode(i, j));
  }
}
