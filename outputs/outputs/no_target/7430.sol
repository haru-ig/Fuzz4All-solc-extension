pragma solidity ^0.8.0;
contract Test {
  uint256 public constant constant1 = 1.0;
  uint256 constant constant2 = 1.0;
  uint256 public constant constant2Mod = 1.0 % 2;
  function test1(uint256 param) public pure returns(uint256) {
    return param + constant1;
  }
}
