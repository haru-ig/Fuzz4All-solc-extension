pragma solidity ^0.8.0;
contract Convert {
  mapping(uint256 => uint256) private signedToUnsigned;
  function _parseUInt256(address from, uint256[] memory data) public pure returns (uint256) {
    require(data.length == 1,"Array must hold exactly one element");
    return from.call(abi.encodePacked(from.call(abi.encodePacked(_parseUInt256, abi.encodePacked(from, data[0]), from)))))(1)[0];
  }
  function toUnsigned(uint256 _value) public pure returns (uint256) {
    return uint256(uint256.div(_value, 2**(uint256(-127)))));
  }
  function add(uint256 _location, uint256 _value) private view returns (uint256) {



    uint256 newValue = toUnsigned(_value.add(_value));
    return signedToUnsigned[uint256(uint256.div(newValue, 2**(uint256(-128)
  }
  function get(uint256 _index) public view returns (uint256) {
    return signedToUnsigned[_index];
  }
}
