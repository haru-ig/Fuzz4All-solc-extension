pragma solidity ^0.8.0;
contract Arrays {
  struct ArrayEntry {
    uint256 element;
  }
  ArrayEntry[] private values;
  constructor() {
    add(0, 10);
  }
  function add(uint256 _location, uint256 _value) public {
    values[_location].element += _value;
  }
  function get(uint256 _index) public view returns (uint256) {
    return values[_index].element;
  }
}
