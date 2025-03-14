pragma solidity ^0.8.0;
contract Mutated {
  function badCall(uint i, uint j) pure public returns (bytes memory) {
    bool cond;
    bytes memory result;




    uint addr = 0x11111111111100000000000000000000000000000000000000000000000000;
    uint x = uint8(uint64(addr));
    bool isEqual = i == x;
    bool isLessThan = x <= j;
    cond = isLessThan || isEqual;
    if (cond) {
      j = j + 1;
    }
    result = abi.encode(i, j);
    return result;
  }
}
