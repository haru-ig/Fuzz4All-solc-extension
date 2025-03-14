pragma solidity ^0.8.0;
contract Convert {

  function unsignedToHex(uint256 _n, uint256 _length) internal pure returns(bytes memory) {
    bytes memory prefix = new bytes(_length);
    uint256 p = prefix.length;
    uint256 div = 10;
    while (_length > 0) {
      prefix[--p] = byte(div + (_n % 10));
      _n /= 10;
      div *= 10;
      _length--;
    }
    return prefix;
  }

  function bytes32ToString(bytes32 b) private pure returns(string memory) {
    bytes memory byteString = new bytes(2 * b.length());
    uint8 i = 0;
    while (i < b.length()) {
      byteString[i * 2] = byte(b[i] & 0xFF);
      byteString[i * 2 + 1] = byte((b[i] >> 8) & 0xFF);
      i++;
    }
    return string(byteString);
  }
}
