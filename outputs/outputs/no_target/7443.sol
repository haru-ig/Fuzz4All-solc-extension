pragma solidity ^0.8.0;
contract Test {
  uint256 constant constant2 = 1.0;
  uint256 constant constant1Old = constant2;
  uint256 constant constant1New = constant1Old + 1;
  uint256 constant constant2Mod = 1.0 % 2;
  uint256 constant constant2ModMod = (uint256)(constant2Mod % 2);
  function test(uint256 x) public view returns(uint256) {
    return constant1New = constant1Old + x;
  }
}
