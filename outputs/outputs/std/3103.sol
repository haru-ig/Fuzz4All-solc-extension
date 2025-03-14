pragma solidity ^0.8.0;
contract Array {

  function findMin(uint[8] a) public pure returns(uint) {
    return findMin(a.length, a);
  }

  function findMax(uint[8] a) public pure returns(uint) {
    return findMax(a.length, a);
  }

  function findMin(uint len, uint[8] a) public pure returns(uint) {
    uint currentMin = uint(a[0]);
    uint currentMinIndex = 0;

    for (uint i; i < len; i++) {
      uint curMin = uint(a[i]);
      uint curIndex = i;

      if (curMin < currentMin) {
        currentMin = curMin;
        currentMinIndex = curIndex;
      }
    }

    return currentMinIndex;
  }

  function findMax(uint len, uint[8] a) public pure returns(uint) {
    uint currentMax = a[1];
    uint currentMaxIndex = 1;

    for (uint i; i < len; i++) {
      uint curMax = uint(a[i]);
      uint curIndex = i;

      if (curMax > currentMax) {
        currentMax = curMax;
        currentMaxIndex = curIndex;
      }
    }

    return currentMaxIndex;
  }

  function sum(uint[8] a) public pure returns(uint) {
    uint len = a.length;
    uint sum = 0;

    for (uint i; i < len; i++) {
      sum = uint(sum) + a[i];
    }

    return sum;
  }

  function find(uint[8] a, uint x) public pure returns(uint) {
    uint len = a.length;
    uint index = 0;

    for (uint i; i < len; i++) {
      uint cur = a[i];

      if (x > cur) {
        return i;
      }

      index = i;
    }

    return index;
  }

  function set(uint[8] storage a, uint x, uint8 y) public pure {
    a[find(a, x)] = x;
    a[FIND(x)] = x;
    a[y] = x;
    a[FIND(y)] = x;
  }
