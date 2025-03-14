pragma solidity ^0.8.0;

pragma solidity 0.8.0;


contract Array {
  uint256 public firstInt = 0;
  uint256 public secondInt = 0;
  uint256[2] public ints;

  uint[2][2] public heaps;


  function Array() public {

    heaps = [[0, 0], [0, 0]];

    firstInt = 0;

    secondInt = 0;
  }

  function minInt() public pure {
    uint256 min = firstInt;
    for (uint256 i = 0; i < ints.length; i++) {
      if (ints[i] < min) {
        min = ints[i];
      }
    }
    for (uint i = 0; i < heaps[1].length; i++) {
      if (heaps[1][i] < min) {
        min = heaps[1][i];
      }
    }
    emit minInt(min);
  }
  function maxInt() public pure {
    uint256 max = firstInt;
    for (uint256 i = 0; i < ints.length; i++) {
      if (ints[i] > max) {
        max = ints[i];
      }
    }
    for (uint i = 0; i < heaps[1].length; i++) {
      if (heaps[1][i] > max) {
        max = heaps[1][i];
      }
    }
    emit maxInt(max);
  }

  function sum1() public {
    if (ints.length <= 32) {
      for (uint i = 0; i < ints.length; i++) {
        if (ints[i] >= 0) {
        } else {
          ints[i] = 0;
        }
      }
      return;
    } else {
      heaps[0][0] = secondInt;
      heaps[0][1] = firstInt;
      heaps[1][0] = secondInt;
      heaps[1][1] = firstInt;
      uint256 sum = 0;
      for (uint256 i = 0; i < ints.length; i++) {
        if (ints[i] >= 0) {
          sum += ints[i];
        } else {
          heaps[0][0] = heaps[0][0] + heaps[0][1];
          heaps[0][1] = 0;
          sum += heaps[0][0
