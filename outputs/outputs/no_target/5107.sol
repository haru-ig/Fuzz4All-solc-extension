pragma solidity ^0.8.0;
contract C43_bug435562650674 {
  function f(uint16 x) private pure returns (uint256 y) {
  assembly {
    y := x
  }
}
