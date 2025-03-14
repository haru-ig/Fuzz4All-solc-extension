pragma solidity ^0.8.0;
contract Bytes32 {
  uint256 private total;
  uint256 private num;
  uint256 private start;
  uint256 private end;
  bytes32[5] public elements;
  constructor(uint256 _start, uint256 _end) {
    start = _start;
    end = _end;
  }
  function insert(uint256 _index, bytes32 _value) public {
    require(start <= _index && _index <= end, "Array index out of range");
    elements[_index] = _value;
    num++;
    if(_index > 0) {
      elements[num] = elements[num - 1];
    }
  }
  function getValue(uint256 _index) public view returns (bytes32) {
    return elements[_index];
  }
  function getNumElements() public view returns (uint256) {
    return num;
  }
}
