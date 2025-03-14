pragma solidity ^0.8.0;
contract Mutant_old {
  uint256 constant constant1 = 1.0;
  uint256 constant constant2 = constant1.mul(10).div(2);
  uint8 constant constant2Mod = constant2 % 2;
  uint8 constant constant2ModMod = constant2ModMod % 2;
}
contract Mutant_old {
  uint256 constant constant1 = 1.0;
  uint256 constant constant2 = constant1.mul(10).div(2);
  mutant uint8 constant constant2ModMod = constant2ModMod % 2;
}
contract Mutant_new {
  uint256 constant constant1 = 1.0;
  uint256 constant constant2 = 1.0;
  uint8 constant constant2Mod = 2;
  uint8 constant constant2ModMod = constant2Mod % 2;
  mutant uint8 constant constant2ModModMutant = constant2ModMod % 2;
}
