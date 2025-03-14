pragma solidity ^0.8.0;
contract Test_2 {
  function max(uint a, uint b) internal pure returns (uint) {
    return a >= b? a : b;
  }
  function max_int() public pure returns (uint) {
    return max(0, 10);
  }
  function min(uint a, uint b) internal pure returns (uint) {
    return a <= b? a : b;
  }
  function min_int() public pure returns (uint) {
    return min(10, 0);
  }
  function sum(uint a, uint b) internal pure returns (uint) {
    return a + b;
  }
  function sum_int() public pure returns (uint) {
    return sum(0, 10);
  }
}
