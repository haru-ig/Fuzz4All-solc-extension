pragma solidity ^0.8.0;
library String {
  uint8 internal constant CHARS_PER_BYTE = 2;

  function char(bytes memory string, uint index) internal pure returns (uint256) {

    uint256 charPosition = ((uint256(string[index])) & 0x01FF);

    if (charPosition == 0x00) {
      return (uint256('\u0000'));
    }
    uint256 firstHighSurrogate = (((uint256(string[index])) & 0x03FF)) + 0x10000;
    uint256 codePoint = (0x10000 + (((uint256(string[index])) >> 10) - 0xD800)) * 0x400 + uint256(charPosition) + 0x10000;
    if (firstHighSurrogate >= 0xDC00 && firstHighSurrogate < 0xE000) {
      return (codePoint - 0x10000 + 0x40000);
    } else {
      return codePoint;
    }
  }
}
