pragma solidity ^0.8.0;
contract Mutant {
  constructor () {
    bool x = constant1 < 1;
    uint16 y = constant2 < 32767;
    uint8 z = constant2/100;
  }

  function isConstant1() public view returns (bool x) {
    x = true;
  }
  function isConstant2() public view returns (bool x) {
    x = false;
  }
  function isConstant2Mod() public view returns (bool x) {
    x = false;
  }
  function isConstant2ModMod() public view returns (bool x) {
    x = true;
  }
}
