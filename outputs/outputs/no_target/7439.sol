pragma solidity ^0.8.0;
contract Test {
  uint256 public constant constant1 = 1.0;
  uint256 constant constant1Mod = 1.0 % 2;
  uint256 constant constant2 = 1.0 % 2;
  uint8 constant constant2ModMod = (uint8)(constant2Mod % 2);
  function test1(uint256 param) public pure returns(uint256) {
    return 1 + param + (param + 1) * 2 + (((1 + 1) + param) * 3);
  }
}
