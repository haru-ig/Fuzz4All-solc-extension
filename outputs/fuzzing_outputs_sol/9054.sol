pragma solidity ^0.8.0;
contract Replacement {
  function badCall() public pure returns (bytes memory) {
    uint addr = 0x1111111111110000000000000000000000000000000000000000000000000;
    uint x = uint8(uint64(addr));
    bool isEqual = x!= 0x00;
    bool isLessThan = x <= 0x00;
    bytes memory result;
    uint y = 0x2;
    for (uint i = 0; i < 3; i++) {
      y = y + 0x1;
    }
    bool isGreaterThan = y >= 0x10;
    bool isEqualOrLessThan = x == 0x00 || x < 0x20;
    cond = isEqualOrLessThan || isLessThan || isGreaterThan;
    if (cond) {
      for (uint i = 3; i > 0; i--) {
        uint c = 0x00;
        uint o = uint16(uint64(c));
        result = abi.encode(x, y);
      }
    }
    return result;
  }
}
