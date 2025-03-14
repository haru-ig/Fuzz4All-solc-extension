pragma solidity ^0.8.0;
contract Convert {
  uint256 public number_a;
  uint256 public number_b;
  uint256 public answer;
  mapping (bytes32 => uint256) public storage_numbers;
  string public output;
  function convert(uint128 num_a, uint256 num_b) returns (uint256) {
    uint256 output_num_a = 0;
    uint256 output_num_b = 0;
    while (num_a > 0) {
      output_num_
