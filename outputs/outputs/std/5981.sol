pragma solidity ^0.8.0;
contract SemanticsCompatible123 {
  function semanticallyEquivalent(uint256 x, uint256 y) public pure returns (uint256) {
    return (x * 2) - y;
  }
}
