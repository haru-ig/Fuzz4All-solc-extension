pragma solidity ^0.8.0;
contract Mutant {
  uint256 constant constant1 = 1.0;
  uint256 constant constant2 = 1.0;
  uint8 constant constant2Mod = 1.0 % 2;
  uint8 constant constant2ModMod = (uint8)(constant2Mod % 2);

  bool public isModified;
  uint8 public counter;
  bool public status;

  modifier noAssert {
    assert(status == false);
    _;
  }

  modifier assert {
    require(status == false);
    _;
  }
}
