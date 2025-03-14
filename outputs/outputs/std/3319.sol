pragma solidity ^0.8.0;
contract Convert {
  function uint8FromString(string memory _s, uint256 radix) public pure returns (uint8) {
    bytes memory bts = bytes(_s);
    uint8 b = 0;
    assembly {
      for { let i := 0 } lt(i, bts) { let digit := byte(bts, i) - 48 } eq(digit, 0) {
            {let i := mload(add(bts, 32), 32)} break
          } {
            mstore(add(b, 0), mul(digit, 10))
            ror(add(b, 0), 1)
            {let i := add(i, 1)}
          }
        }
    }
    return b;
  }
  function intFromUint8(uint8 _i, uint256 radix) public pure returns (int) {
    bytes memory b1;
    bytes1 b = bytes1(uint8(_i));
    b1 = new bytes1(b.length);
    b1 = concat(b1, b);
    return bytesToInt(bytesToString(b1, 10));
  }
  function bytesToInt(bytes memory _s, uint256 radix) public pure returns (int) {
    bytes memory b = bytes(_s);
    if (radix < 2 || radix > 36) revert();
    if (b.length == 0) return 0;
    uint256 x = 0;
    uint8 index = 0;
    for (uint8 i = 0; i!= b.length; i ++) {
      uint8 c = bytes2uint8(b[i]);
      if ((radix <= 26 && uint8('A') <= c && c <= uint8('Z')) || (radix <= 7 && uint8('a') <= c && c <= uint8('z'))) continue;
      if (index!= 0) revert();
      x *= radix;
      x += c;
      index ++;
    }
    return x;
  }
  function bytes2uint8(byte c) internal pure returns (uint8) {
    if (97 <= uint8(c) && c <= 122) return uint8(c) - 87;
    return uint8(c) - 48;
  }
  function bytesToString(bytes memory b, uint8 radix) public pure returns (string memory res) {
    bytes memory bts = bytes(b);
    require(bts.length > 0, "Bytes is empty");
    res = "";
    uint8 i;
    for (i = 0; i!= bts.length; i ++) {
      uint8 c = bytes2uint8(bts[i]);
      if ((radix <= 26 && uint8('A') <= c && c <= uint8('Z')) || (radix <= 7 && uint8('a') <= c && c <= uint8('z'))) continue;
