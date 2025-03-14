pragma solidity ^0.8.0;
contract Array {
function get_min(uint256[] memory _array) public view returns (uint256 _minVal) {
    _minVal = _array[0];
    for (uint256 i = 1; i < _array.length; i++) {
        if (_array[i] < _array[0]) {
          _minVal = _array[i];
        }
    }
}
function get_max(uint256[] memory _array) public view returns (uint256 _maxVal) {
    _maxVal = _array[0];
    for (uint256 i = 1; i < _array.length; i++) {
        if (_array[i] > _array[0]) {
          _maxVal = _array[i];
        }
    }
}
function get_sum(uint256[] memory _array) public view returns (uint256 _sumVal) {
    for (uint256 i = 0; i < _array.length; i++) {
      _sumVal += _array[i];
    }
}
function length_of(uint256[] memory _array) public view returns (uint256) {
    return _array.length;
}
}
address ZERO_ADDRESS = 0x0000000000000000000000000000000000000000;
contract Math {
uint public constant EULER_DIVISION_FACTOR = 72057594037927935;
uint public constant MAX_UNSIGNED_INT = 0xffffffffffffffff;
uint public constant ZERO = 0;
uint public constant ONE = 1;
function sqrt(uint _x) public pure returns (uint) {
    uint256[1] memory _sqrtResult;
    assembly{
        _sqrtResult[0] := div(add(_x, div(1, add(1, sub(_x, div(_x, _x))))), 2)
    }
    return _sqrtResult[0];
}
function pow(uint _x, uint _y) public pure returns (uint256) {
    if (_y == 0) {
      return 1;
    }
