pragma solidity ^0.8.0;
contract MutateArray_v3 {


  uint256 public arr[2] = [1, 2];

  uint256 public arr2[3];

  uint8 testUInt() public view returns (uint8) {
    return arr2[2];
  }

  uint32 public arr3[2] = [1, 2];

  uint8[20] public arr4[5];

  uint32 public arr5;

  uint32 public arr6 = 20;
}
