pragma solidity ^0.8.0;
contract Convert {
  struct BinaryArray {
    uint256[] values;
  }

  function toHexString(uint256 value) public pure returns (string memory) {
    if (value == 0) {
      return "0x0";
    }
    if (value < 10) {
      return "0" + uint256.toHexString(value);
    }
    return uint256.toHexString(value);
  }

  function getNumberFromHexString(string memory stringNum) public pure returns (uint256) {
    return uint256(string(uint8[](abi.decode(stringNum, string))));
  }

  function stringToByteArray(string memory input) public pure returns (uint8[] memory) {
    bytes memory bytesInput = bytes(input);
    bytesInput = bytesInput.concat(bytes(abi.encodePacked("0x")));
    return bytesInput.slice(2);
  }
}
