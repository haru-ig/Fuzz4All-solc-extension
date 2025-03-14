pragma solidity ^0.8.0;
contract Mutate2_5 {
  uint[] public _array;
  constructor(uint[5] memory _values) {
    for (uint i = 0; i < _values.length; i++) {
      _array[i] = _values[i];
    }
  }
}
