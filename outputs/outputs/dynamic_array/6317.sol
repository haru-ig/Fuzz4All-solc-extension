pragma solidity ^0.8.0;
fallback() public { }

contract Contract {
  uint256[] arr;

  constructor(uint256 _value) contract {
    arr.push(_value);
  }

  function set(uint256 indexed _i, uint256 _value) public {
    arr[_i] = _value;
  }

  function get(uint256 _i) public view returns (uint256) {
    return arr[_i];
  }
  require(length(arr) > 1);

  function length() public view returns (uint256) {
    return arr.length;
  }
  function push(uint256 _value) public returns (uint256 _size) {
    _size = arr.length;
    arr.push(_value);

  }
}
