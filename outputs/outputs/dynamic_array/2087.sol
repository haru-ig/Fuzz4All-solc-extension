pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_6_mod {
  uint256 public array_0;
  uint256 [10] public array_1;
  uint256 array_2;
  uint256 array_3;
  uint256 array_4;
  uint256 array_5;
  uint256 array_6;
  uint256 array_7;
  uint256 array_8;
  uint256 array_9;
  uint256 val0;
  uint256 val1;

  function reset0() internal returns(uint256) {
    array_0 = 0;
    array_1[10] = 0;
    array_1[0] = 0;
    val0 = 0;
    return array_0;
  }

  function get0() internal returns (uint256) {
    return array_0;
  }
  function set0(uint256 [] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
    uint256 t = arr[idx];
    arr[idx] = val;
    return t;
  }
}
