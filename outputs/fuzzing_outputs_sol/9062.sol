pragma solidity ^0.8.0;
contract Fallback {
  function goodCall(uint i) pure public returns (uint) {
    uint j;
  }
}
contract Test {
  function goodCall(uint i, uint j) pure public returns (bool) {
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
