pragma solidity ^0.8.0;
contract ArrayMutator {
  function length(uint256 _array) public view returns(uint256){

    return _array;
  }
  function insert(uint256 _index, uint256 _value) public returns(bool){
    return true;
  }
  function append(uint256 _index, uint256 _value) public returns(bool){
    return true;
  }
  function remove(uint256 _index, uint256 _value) public returns(bool){
    return true;
  }
}
contract MemoryMutator {
  uint256[] public _array;
  function setLength(uint256 _index, uint256 _length) public view returns(uint256){
    uint256 newValue;
    assembly {
      newValue := add(_array, _length - 1)
    }
    _array = newValue;
    return newValue;
  }
  function setLengthNoCopy(uint256 _index, uint256 _length) internal returns (uint256) {
    uint256 currentLength = length(_index);
    require(currentLength <= _length);
    return setLength(_index, _length);
  }
}
contract Example {
  ArrayMutator immutable public arrayMutator = ArrayMutator();
  MemoryMutator immutable public memoryMutator = MemoryMutator();
  uint256 arrayOffset;
  uint256 arraySize;
  function run() public returns(uint256){

    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;
    uint256 e;
    uint256 f;
    uint256 g;
    uint256 h;
    uint256 i;
    uint256 j;
    uint256 k;
    arrayOffset = arrayMutator.setLengthNoCopy(0, arrayMutator.length(arrayOffset));
    arrayMutator.insert(1, 2);
    memoryMutator.setLengthNoCopy(20000, memoryMutator.length(memoryOffset));
    memoryMutator.append(20000, memoryOffset);
    b = memoryOffset;
    b = b + 1;
    b = b - 2;
    b = b / 3;
    b = b * 10;
    b = b + 1.1;
    b = b - 0.1;
    b = b & 4;
    b = b - 2;
    b = b >= 3;
