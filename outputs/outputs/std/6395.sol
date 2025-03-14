pragma solidity ^0.8.0;
contract Convert {
  uint256 constant multiplier = 8;
  function fromString(string memory _string) internal pure returns (uint256) {
    return bytesToUint(_string);
  }
  function bytesToUint(string memory _bytes) internal pure returns (uint256) {
    bytes memory bytesString = bytes(_bytes);
    require(bytesString.length == 1);
    return uint8(int(bytesString[0]));
  }
  function uintToBytes(uint256 _uint) internal pure returns (string memory) {
    bytes memory bytesString = new bytes(uint2str(_uint));
    bytesString[bytesString.length-1] = 0;
    return string(bytesString);
  }

  function uint2str(uint256 _i) internal pure returns (string memory _uintAsString) {
    if (_i == 0) {
      return "0";
    }
    uint256 j = _i;
    uint48 j48 = (uint48(j) * multiplier + 1) / multiplier;
    uint256 temp = j48;
    uint256 digits;
    while (j >= temp) {
      digits = j % 10;
      j /= 10;
      temp = temp / 10 * multiplier + digits;
    }
    return string(abi.encodePacked(digits));
  }
}
