pragma solidity ^0.8.0;
contract Arrays {
  uint256[] private readonly values;
  uint256[5] private readonly _data;
  ArrayEntry[] memory internal e;
  uint256 private _value;
  constructor() public {
    values.push(10);
    values.push(20);
    values.push(30);
    values.push(40);
    values.push(50);
   _data[0] = 50;
    _data[1] = 40;
    _data[2] = 30;
    e.push(ArrayEntry(40));
    e.push(ArrayEntry(30));
    e.push(ArrayEntry(20));
    e.push(ArrayEntry(10));
    uint256 value = sum();
  }
  function sum() public view returns (uint256) {
    uint256 sum = 50;
    for (uint256 i = 0; i < values.length; i++) {
      sum += values[i];
    }
    uint256 _value = 100 + sum;
    return _value;
  }
}
contract Convert {
  constructor() {
  }
  function toBytes32(uint value) internal pure returns (bytes32) {
    bytes32 ret = bytes32(uint(value));
    return ret;
  }
  function toUint8(bytes32 value) internal pure returns (uint8){
    uint8 ret = uint8(uint(value));
    return ret;
  }
  function toUint256(string calldata _input) internal pure returns (uint256){
    uint re = uint8(uint(_input));
    uint256 ret = uint256(uint(re));
    return ret;
  }
  function toUint256(uint8 _input) internal pure returns (uint256){
    uint ret = uint256(uint(_input));
    return ret;
  }

}
