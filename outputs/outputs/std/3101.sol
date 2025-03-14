pragma solidity ^0.8.0;
contract Array {
  function findMaximum(uint[10] memory arr) public pure returns (uint) {
    uint maximum = arr[0];
    for (uint i = 1; i < arr.length; i++) {
      if (arr[i] > maximum) {
        maximum = arr[i];
      }
    }
    return maximum;
  }

  function findMinimum(uint[10] memory arr) public pure returns (uint) {
    uint minimum = arr[0];
    for (uint i = 1; i < arr.length; i++) {
      if (arr[i] < minimum) {
        minimum = arr[i];
      }
    }
    return minimum;
  }

  function sum(uint[10] memory arr) public pure returns (uint) {
    uint sum = arr[0];
    for (uint i = 1; i < arr.length; i++) {
      sum += arr[i];
    }
    return sum;
  }

  function maxOfThree(uint a, uint b, uint c) internal pure returns (uint) {
    return (a > b && a > c)? a : (b > a && b > c)? b : c;
  }
}

contract Math {

  uint constant _ONE_E9=10**9,
    _GOLDEN_RATIO = 16/9,
    _ONE_MINUS_GOLDEN_RATIO = 1/3;
  uint constant _MAX_INT_8 = 255;
  uint constant _NEGATIVE_INFINITY = 0x80000000;
  uint constant _POSITIVE_INFINITY = ~0x80000000;
  uint constant _NOT_NEGATIVE_INFINITY = 0x7FFFFFFF;
  uint constant _NOT_POSITIVE_INFINITY = ~_NOT_NEGATIVE_INFINITY;

  uint constant _MIN_SAFE_INTEGER = -8**100;
  uint constant _MAX_SAFE_INTEGER = 8**100;
  uint constant _TWO_POW_ZERO_BITS = _ONE_E9;
  uint constant _TWO_POW_ONE_BIT = _ONE_E9+1;
  uint constant _TWO_POW_TWO_BITS = _ONE_E9+2;
  uint constant _TWO_POW_TWO_M_1 = _ONE_E9+2;
  uint constant _TWO_POW_THREE_BITS = _ONE_E9+3;
  uint constant _TWO_POW_TEN_BITS = _ONE_E9+10;
