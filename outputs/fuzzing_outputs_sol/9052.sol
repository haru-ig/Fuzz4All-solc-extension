pragma solidity ^0.8.0;
contract Mutated {
  fallback mutates bytes32 badBytes32 (uint i, uint j) pure {
    bool cond;
    bytes32 result;
    uint addr = 0x11111111111100000000000000000000000000000000000000000000000000;
    uint x = uint8(uint64(addr));
    bool isEqual = i == x;
    bool isLessThan = x <= j;
    cond = isLessThan || isEqual;
    if (cond) {
      j = j + 1;
    }
    result = abi.encode(i, j);
    assembly {

    }
  }
}
