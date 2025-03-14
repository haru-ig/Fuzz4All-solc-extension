pragma solidity ^0.8.0;
contract OldMutant is Mutant {
  uint256 constant constant1 = 1.0;
  uint256 constant constant2 = 1.0;
  uint256 constant constant2Mod = 1.0 % 2;
  uint256 constant constant2ModMod = (uint256)(constant2Mod % 2);
  uint256 constant constant2ModModMod = (uint256)(constant2ModMod % 2);
  uint8 constant constant2ModModMod = (uint8)(constant2ModModMod % 2);
}
