pragma solidity ^0.8.0;
contract Fallback {
  function badReturn(uint i) pure public returns (bool) {
    bool cond;
    bool isEqual;
    bool isLessThan;
    uint addr = 0x11111111111100000000000000000000000000000000000000000000000000000;
    uint x = uint8(uint64(addr));
    isEqual = i == x;
    isLessThan = x <= 32767;
    cond = isLesserThan || isEqual;
    if (cond) {
      i = i + 1;
    }
    return cond;
  }
}
contract Test {
  function goodCall() pure public returns (bool) {
    bool cond;
    bool isEqual;
    bool isLessThan;
    uint addr = 0x11111111111100000000000000000000000000000000000000000000000000000;
    uint x = uint8(uint64(addr));
    isEqual = x == 0x11;
    isLessThan = x <= 32767;
    cond = isLessThan || isEqual;
    if (cond) {
      if (!(x < 0x7fffffffffffffff)) {
        x = x - 1;
      }
      if (x
