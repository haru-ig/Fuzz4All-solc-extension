pragma solidity ^0.8.0;
contract Example {
  function badCall(uint i, uint j) public {
    uint addr = 0x111111111111000000000000000000000000000000000000000000000000000000;
    uint x = uint8(uint64(addr));
    bool isEqual = i == x;
    bool isLessThan = x <= j;
    if (isLessThan || isEqual) {
      j = j + 1;
    }
  }
}
