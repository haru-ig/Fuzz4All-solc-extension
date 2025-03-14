pragma solidity ^0.8.0;
contract ArrayStorage {
  uint256[] private _values;
  mapping(uint256 => uint256[]) private _mappedValues;
  function get(uint256 _index) public view returns (uint256){
    return _values[_index];
  }
  function get(uint256[] calldata _indices) public view returns (uint256[]) {
    uint256[] memory r = new uint256[](_indices.length);
    for (uint256 i = 0; i < _indices.length; i++) {
      r[i] = _values[_indices[i]];
    }
    return r;
  }

  function push(uint256 _value) public {
    _values.push(_value);
  }

  function pushAll(uint256[] calldata _valuesToPush) public {
    for (uint256 i = 0; i < _valuesToPush.length; i++) {
      _values.push(_valuesToPush[i]);
    }
  }

  function mappedPush(uint256 _index,uint256 _value) public {
    _mappedValues[_index].push(_value);
  }

  function mappedPushAll(uint256[] calldata _indices, uint256[] calldata _valuesToPush) public {
    for (uint256 i = 0; i < _indices.length; i++) {
      _mappedValues[_indices[i]].push(_valuesToPush[i]);
    }
  }
}
