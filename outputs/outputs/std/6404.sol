pragma solidity ^0.8.0;
contract Convert {
  constructor() { }
  function toHexString(uint8 x) internal pure returns (string memory) {
    bytes memory toHex = new bytes(2);
    toHex[0] = "0" == bytes(uint256(x))[0]? "0" : "1";
    toHex[1] = bytes(uint256(x))[1];
    return string(toHex);
  }
  function toUint(string memory hex) internal pure returns (uint256) {
    bytes memory bytesStr = bytes(hex);
    unchecked {
      require(bytesStr.length == 2, "Invalid string length");
      return (uint256(bytesStr[1]) * (uint256(256))) + uint256(bytesStr[0]) - uint256(0x100);
    }
  }
  function toUint8(string memory hex) internal pure returns (uint8) {
    return uint8(toUint(hex));
  }
}
