pragma solidity ^0.8.0;
contract Fallback {
  function badCall(uint i, uint j) pure public returns (bytes memory) {
    bool cond;
    bytes memory result;
    uint addr = 0x1111111111110000000000000000000000000000000000000000000000000000;
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


pragma solidity ^0.8.0;
contract Test {
  function badCall(uint i, uint j) pure public returns (bool) {
    bool cond;
    bool isEqual;
    bool isLessThan;
    uint addr = 0x111111111111000000000000000000000000000000000000000000000000000;
    uint x = uint8(uint64(addr));
    isEqual = i == x;
    isLessThan = x <= j;
    cond = isLessThan || isEqual;
    return cond;
  }
}
