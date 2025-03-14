pragma solidity ^0.8.0;

contract Mutate3 {
  uint _i;
  uint[] _array;

  constructor() {
    _i = 0;
    _array = new uint[](32);
  }

  function getArrayLength() public view returns (uint) {
    return _array.length;
  }

  function getArray() public view returns (uint[]) {
    return _array;
  }

  function ChangeArrayValue(uint j,uint v) public returns (uint) {
    _array[j]=v;
    return v;
  }
}
