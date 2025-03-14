pragma solidity ^0.8.0;
contract Array {
  constructor(uint x, uint a) public {
    _a[x - 1] = a;
  }
  function findMax(uint x) public view returns (uint) {
    for (uint i = 0; i < x - 1; i++) {
      if (_a[i] < _a[i + 1]) return _a[i];
    }
  }
  function findMin(uint x) public view returns (uint) {
    for (uint i = 0; i < x - 1; i++) {
      if (_a[i] > _a[i + 1]) return _a[i];
    }
  }
  function findSum(uint x) public view returns (uint) {
    uint sum = 0;
    for (uint i = 0; i < x; i++) {
      sum += _a[i];
    }
    return sum;
  }
  function findArray(uint i) public view returns (uint) {
    return _a[i];
  }
  uint[5] _a;
}
