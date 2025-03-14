pragma solidity ^0.8.0;
contract Mutation_04_DynamicallySizedArrays_v2 {
  constructor() public {
    A a1;
    uint256[] memory a1Arr;
    a1Arr.length++;
    a1Arr.length = a1.set(a1Arr, 0, 1);

  }
  function set(uint256[] storage arr, uint256 idx, uint256 val) internal returns(uint256) {
    arr[idx] = val;
    arr[idx+1] = arr[idx+2];
    return idx+2;
  }
}
