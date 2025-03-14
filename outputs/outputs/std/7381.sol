pragma solidity ^0.8.0;
contract Convert {
  function getBytes32() public pure returns (uint256 _value) {
    return uint256(keccak256(abi.encodeAsString("a string")));
  }
  function getBytes32Array(uint256 _length) public view returns (uint256[] memory buffer) {
    buffer = new uint256[](_length);
    for (uint256 _index = 0; _index < _length; _index++) {
      buffer[_index] = bytes32(_index);
    }
    return buffer;
  }
  function getBytes4() public pure returns (uint256 _value) {
    return uint256(keccak256(abi.encodePacked("a byte", "array")));
  }
  function getBytes8() public pure returns (uint256 _value) {
    return uint256(keccak256(abi.encodePacked("b byte", "array")));
  }
}
